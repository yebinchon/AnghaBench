; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_mspro_block.c_mspro_block_complete_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_mspro_block.c_mspro_block_complete_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memstick_dev = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.mspro_block_data = type { i64, i32, i32, i32, i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"complete %d, %d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@MSPRO_CMD_STOP = common dso_local global i64 0, align 8
@READ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"transferred %x (%d)\0A\00", align 1
@h_mspro_block_default_bad = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.memstick_dev*, i32)* @mspro_block_complete_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mspro_block_complete_req(%struct.memstick_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.memstick_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mspro_block_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.memstick_dev* %0, %struct.memstick_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %11 = call %struct.mspro_block_data* @memstick_get_drvdata(%struct.memstick_dev* %10)
  store %struct.mspro_block_data* %11, %struct.mspro_block_data** %5, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.mspro_block_data*, %struct.mspro_block_data** %5, align 8
  %13 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %12, i32 0, i32 4
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %17 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %16, i32 0, i32 2
  %18 = load %struct.mspro_block_data*, %struct.mspro_block_data** %5, align 8
  %19 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %18, i32 0, i32 5
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 0
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @dev_dbg(i32* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load %struct.mspro_block_data*, %struct.mspro_block_data** %5, align 8
  %27 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %26, i32 0, i32 5
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %144

30:                                               ; preds = %2
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @EAGAIN, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %30
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %41 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @MSPRO_CMD_STOP, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %96

46:                                               ; preds = %39, %36
  %47 = load %struct.mspro_block_data*, %struct.mspro_block_data** %5, align 8
  %48 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @READ, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %95

52:                                               ; preds = %46
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %91, %52
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.mspro_block_data*, %struct.mspro_block_data** %5, align 8
  %56 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %94

59:                                               ; preds = %53
  %60 = load %struct.mspro_block_data*, %struct.mspro_block_data** %5, align 8
  %61 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %60, i32 0, i32 6
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.mspro_block_data*, %struct.mspro_block_data** %5, align 8
  %69 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = udiv i32 %67, %70
  %72 = load i32, i32* %8, align 4
  %73 = add i32 %72, %71
  store i32 %73, i32* %8, align 4
  %74 = load %struct.mspro_block_data*, %struct.mspro_block_data** %5, align 8
  %75 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %59
  %79 = load %struct.mspro_block_data*, %struct.mspro_block_data** %5, align 8
  %80 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = sub nsw i32 %81, 1
  %83 = load i32, i32* %8, align 4
  %84 = add i32 %83, %82
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %78, %59
  %86 = load %struct.mspro_block_data*, %struct.mspro_block_data** %5, align 8
  %87 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %8, align 4
  %90 = mul i32 %89, %88
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %85
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %53

94:                                               ; preds = %53
  br label %95

95:                                               ; preds = %94, %46
  br label %101

96:                                               ; preds = %39
  %97 = load %struct.mspro_block_data*, %struct.mspro_block_data** %5, align 8
  %98 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %97, i32 0, i32 5
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @blk_rq_bytes(i32* %99)
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %96, %95
  %102 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %103 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %102, i32 0, i32 2
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @dev_dbg(i32* %103, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %104, i32 %105)
  %107 = load i32, i32* %4, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %101
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %109
  %113 = load %struct.mspro_block_data*, %struct.mspro_block_data** %5, align 8
  %114 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %113, i32 0, i32 5
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @blk_rq_cur_bytes(i32* %115)
  store i32 %116, i32* %8, align 4
  br label %117

117:                                              ; preds = %112, %109, %101
  %118 = load %struct.mspro_block_data*, %struct.mspro_block_data** %5, align 8
  %119 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %118, i32 0, i32 5
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %4, align 4
  %122 = call i32 @errno_to_blk_status(i32 %121)
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @blk_update_request(i32* %120, i32 %122, i32 %123)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %117
  %128 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %129 = call i32 @mspro_block_issue_req(%struct.memstick_dev* %128)
  store i32 %129, i32* %4, align 4
  %130 = load i32, i32* %4, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %127
  br label %158

133:                                              ; preds = %127
  br label %143

134:                                              ; preds = %117
  %135 = load %struct.mspro_block_data*, %struct.mspro_block_data** %5, align 8
  %136 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %135, i32 0, i32 5
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %4, align 4
  %139 = call i32 @errno_to_blk_status(i32 %138)
  %140 = call i32 @__blk_mq_end_request(i32* %137, i32 %139)
  %141 = load %struct.mspro_block_data*, %struct.mspro_block_data** %5, align 8
  %142 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %141, i32 0, i32 5
  store i32* null, i32** %142, align 8
  br label %143

143:                                              ; preds = %134, %133
  br label %151

144:                                              ; preds = %2
  %145 = load i32, i32* %4, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %144
  %148 = load i32, i32* @EAGAIN, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %4, align 4
  br label %150

150:                                              ; preds = %147, %144
  br label %151

151:                                              ; preds = %150, %143
  %152 = load i32, i32* @h_mspro_block_default_bad, align 4
  %153 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %154 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  %155 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %156 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %155, i32 0, i32 0
  %157 = call i32 @complete_all(i32* %156)
  br label %158

158:                                              ; preds = %151, %132
  %159 = load %struct.mspro_block_data*, %struct.mspro_block_data** %5, align 8
  %160 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %159, i32 0, i32 4
  %161 = load i64, i64* %9, align 8
  %162 = call i32 @spin_unlock_irqrestore(i32* %160, i64 %161)
  %163 = load i32, i32* %4, align 4
  ret i32 %163
}

declare dso_local %struct.mspro_block_data* @memstick_get_drvdata(%struct.memstick_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @blk_rq_bytes(i32*) #1

declare dso_local i32 @blk_rq_cur_bytes(i32*) #1

declare dso_local i32 @blk_update_request(i32*, i32, i32) #1

declare dso_local i32 @errno_to_blk_status(i32) #1

declare dso_local i32 @mspro_block_issue_req(%struct.memstick_dev*) #1

declare dso_local i32 @__blk_mq_end_request(i32*, i32) #1

declare dso_local i32 @complete_all(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
