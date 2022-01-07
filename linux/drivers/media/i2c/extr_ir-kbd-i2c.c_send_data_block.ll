; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ir-kbd-i2c.c_send_data_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ir-kbd-i2c.c_send_data_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IR_i2c = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.code_block = type { i32, i32* }

@.str = private unnamed_addr constant [5 x i8] c"%*ph\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"i2c_master_send failed with %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IR_i2c*, i32, %struct.code_block*)* @send_data_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_data_block(%struct.IR_i2c* %0, i32 %1, %struct.code_block* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.IR_i2c*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.code_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [5 x i32], align 16
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.IR_i2c* %0, %struct.IR_i2c** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.code_block* %2, %struct.code_block** %7, align 8
  %14 = load %struct.code_block*, %struct.code_block** %7, align 8
  %15 = getelementptr inbounds %struct.code_block, %struct.code_block* %14, i32 0, i32 0
  store i32* %15, i32** %12, align 8
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %35, %3
  %17 = load i32*, i32** %12, align 8
  %18 = load %struct.code_block*, %struct.code_block** %7, align 8
  %19 = getelementptr inbounds %struct.code_block, %struct.code_block* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ult i32* %17, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %16
  %23 = load i32*, i32** %12, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %12, align 8
  %25 = load i32, i32* %23, align 4
  %26 = load %struct.code_block*, %struct.code_block** %7, align 8
  %27 = getelementptr inbounds %struct.code_block, %struct.code_block* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = xor i32 %33, %25
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %22
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %16

38:                                               ; preds = %16
  %39 = load %struct.code_block*, %struct.code_block** %7, align 8
  %40 = getelementptr inbounds %struct.code_block, %struct.code_block* %39, i32 0, i32 0
  store i32* %40, i32** %12, align 8
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %112, %38
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp ult i64 %43, 16
  br i1 %44, label %45, label %116

45:                                               ; preds = %41
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = sub i64 16, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp sgt i32 %50, 4
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i32 4, i32* %13, align 4
  br label %53

53:                                               ; preds = %52, %45
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  %56 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  store i32 %55, i32* %56, align 16
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %73, %53
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %76

61:                                               ; preds = %57
  %62 = load i32*, i32** %12, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %62, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 1, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 %71
  store i32 %68, i32* %72, align 4
  br label %73

73:                                               ; preds = %61
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %57

76:                                               ; preds = %57
  %77 = load %struct.IR_i2c*, %struct.IR_i2c** %5, align 8
  %78 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, 1
  %83 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  %84 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %82, i32* %83)
  %85 = load %struct.IR_i2c*, %struct.IR_i2c** %5, align 8
  %86 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, 1
  %91 = call i32 @i2c_master_send(i32 %87, i32* %88, i32 %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 1
  %95 = icmp ne i32 %92, %94
  br i1 %95, label %96, label %112

96:                                               ; preds = %76
  %97 = load %struct.IR_i2c*, %struct.IR_i2c** %5, align 8
  %98 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %10, align 4
  %102 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %100, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %10, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %96
  %106 = load i32, i32* %10, align 4
  br label %110

107:                                              ; preds = %96
  %108 = load i32, i32* @EIO, align 4
  %109 = sub nsw i32 0, %108
  br label %110

110:                                              ; preds = %107, %105
  %111 = phi i32 [ %106, %105 ], [ %109, %107 ]
  store i32 %111, i32* %4, align 4
  br label %169

112:                                              ; preds = %76
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %8, align 4
  br label %41

116:                                              ; preds = %41
  %117 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  store i32 0, i32* %117, align 16
  %118 = load i32, i32* %6, align 4
  %119 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 1
  store i32 %118, i32* %119, align 4
  %120 = load %struct.IR_i2c*, %struct.IR_i2c** %5, align 8
  %121 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  %124 = call i32 @i2c_master_send(i32 %122, i32* %123, i32 2)
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %10, align 4
  %126 = icmp ne i32 %125, 2
  br i1 %126, label %127, label %143

127:                                              ; preds = %116
  %128 = load %struct.IR_i2c*, %struct.IR_i2c** %5, align 8
  %129 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %128, i32 0, i32 0
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @dev_err(i32* %131, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %132)
  %134 = load i32, i32* %10, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %127
  %137 = load i32, i32* %10, align 4
  br label %141

138:                                              ; preds = %127
  %139 = load i32, i32* @EIO, align 4
  %140 = sub nsw i32 0, %139
  br label %141

141:                                              ; preds = %138, %136
  %142 = phi i32 [ %137, %136 ], [ %140, %138 ]
  store i32 %142, i32* %4, align 4
  br label %169

143:                                              ; preds = %116
  %144 = call i32 @usleep_range(i32 2000, i32 5000)
  %145 = load %struct.IR_i2c*, %struct.IR_i2c** %5, align 8
  %146 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  %149 = call i32 @i2c_master_send(i32 %147, i32* %148, i32 1)
  store i32 %149, i32* %10, align 4
  %150 = load i32, i32* %10, align 4
  %151 = icmp ne i32 %150, 1
  br i1 %151, label %152, label %168

152:                                              ; preds = %143
  %153 = load %struct.IR_i2c*, %struct.IR_i2c** %5, align 8
  %154 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %153, i32 0, i32 0
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i32, i32* %10, align 4
  %158 = call i32 @dev_err(i32* %156, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %157)
  %159 = load i32, i32* %10, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %152
  %162 = load i32, i32* %10, align 4
  br label %166

163:                                              ; preds = %152
  %164 = load i32, i32* @EIO, align 4
  %165 = sub nsw i32 0, %164
  br label %166

166:                                              ; preds = %163, %161
  %167 = phi i32 [ %162, %161 ], [ %165, %163 ]
  store i32 %167, i32* %4, align 4
  br label %169

168:                                              ; preds = %143
  store i32 0, i32* %4, align 4
  br label %169

169:                                              ; preds = %168, %166, %141, %110
  %170 = load i32, i32* %4, align 4
  ret i32 %170
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @i2c_master_send(i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
