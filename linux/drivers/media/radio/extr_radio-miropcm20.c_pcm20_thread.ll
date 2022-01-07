; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-miropcm20.c_pcm20_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-miropcm20.c_pcm20_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm20 = type { i32, i32, i32, i32, i32, i32, i32 }

@RDS_RXVALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RDS_STATUS = common dso_local global i32 0, align 4
@RDS_STATIONNAME = common dso_local global i32 0, align 4
@RDS_PTYTATP = common dso_local global i32 0, align 4
@RDS_TEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @pcm20_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm20_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pcm20*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [66 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.pcm20*
  store %struct.pcm20* %12, %struct.pcm20** %3, align 8
  store i32 5, i32* %4, align 4
  store i32 2000, i32* %5, align 4
  store i32 5, i32* %6, align 4
  br label %13

13:                                               ; preds = %180, %73, %40, %39, %33, %26, %1
  %14 = call i32 @msleep_interruptible(i32 2000)
  %15 = call i64 (...) @kthread_should_stop()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %181

18:                                               ; preds = %13
  %19 = load %struct.pcm20*, %struct.pcm20** %3, align 8
  %20 = getelementptr inbounds %struct.pcm20, %struct.pcm20* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @RDS_RXVALUE, align 4
  %23 = call i32 (i32, i32, ...) @rds_cmd(i32 %21, i32 %22, i32* %8, i32 1)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %13

27:                                               ; preds = %18
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %65

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %13

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  %36 = add i32 %35, -1
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %13

40:                                               ; preds = %34
  %41 = load %struct.pcm20*, %struct.pcm20** %3, align 8
  %42 = getelementptr inbounds %struct.pcm20, %struct.pcm20* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @v4l2_ctrl_s_ctrl_string(i32 %43, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.pcm20*, %struct.pcm20** %3, align 8
  %46 = getelementptr inbounds %struct.pcm20, %struct.pcm20* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @v4l2_ctrl_s_ctrl(i32 %47, i32 1)
  %49 = load %struct.pcm20*, %struct.pcm20** %3, align 8
  %50 = getelementptr inbounds %struct.pcm20, %struct.pcm20* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @v4l2_ctrl_s_ctrl(i32 %51, i32 0)
  %53 = load %struct.pcm20*, %struct.pcm20** %3, align 8
  %54 = getelementptr inbounds %struct.pcm20, %struct.pcm20* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @v4l2_ctrl_s_ctrl(i32 %55, i32 0)
  %57 = load %struct.pcm20*, %struct.pcm20** %3, align 8
  %58 = getelementptr inbounds %struct.pcm20, %struct.pcm20* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @v4l2_ctrl_s_ctrl(i32 %59, i32 0)
  %61 = load %struct.pcm20*, %struct.pcm20** %3, align 8
  %62 = getelementptr inbounds %struct.pcm20, %struct.pcm20* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @v4l2_ctrl_s_ctrl_string(i32 %63, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %13

65:                                               ; preds = %27
  store i32 5, i32* %6, align 4
  %66 = load %struct.pcm20*, %struct.pcm20** %3, align 8
  %67 = getelementptr inbounds %struct.pcm20, %struct.pcm20* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @RDS_STATUS, align 4
  %70 = call i32 (i32, i32, ...) @rds_cmd(i32 %68, i32 %69, i32* %8, i32 1)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %13

74:                                               ; preds = %65
  %75 = load i32, i32* %8, align 4
  %76 = ashr i32 %75, 3
  %77 = and i32 %76, 1
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %100

79:                                               ; preds = %74
  %80 = load %struct.pcm20*, %struct.pcm20** %3, align 8
  %81 = getelementptr inbounds %struct.pcm20, %struct.pcm20* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @RDS_STATIONNAME, align 4
  %84 = getelementptr inbounds [66 x i8], [66 x i8]* %7, i64 0, i64 0
  %85 = call i32 (i32, i32, ...) @rds_cmd(i32 %82, i32 %83, i8* %84, i32 8)
  store i32 %85, i32* %9, align 4
  %86 = getelementptr inbounds [66 x i8], [66 x i8]* %7, i64 0, i64 8
  store i8 0, i8* %86, align 8
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %99, label %89

89:                                               ; preds = %79
  %90 = getelementptr inbounds [66 x i8], [66 x i8]* %7, i64 0, i64 0
  %91 = call i64 @sanitize(i8* %90, i32 8)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = load %struct.pcm20*, %struct.pcm20** %3, align 8
  %95 = getelementptr inbounds %struct.pcm20, %struct.pcm20* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds [66 x i8], [66 x i8]* %7, i64 0, i64 0
  %98 = call i32 @v4l2_ctrl_s_ctrl_string(i32 %96, i8* %97)
  br label %99

99:                                               ; preds = %93, %89, %79
  br label %100

100:                                              ; preds = %99, %74
  %101 = load i32, i32* %8, align 4
  %102 = ashr i32 %101, 6
  %103 = and i32 %102, 1
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %152

105:                                              ; preds = %100
  %106 = load %struct.pcm20*, %struct.pcm20** %3, align 8
  %107 = getelementptr inbounds %struct.pcm20, %struct.pcm20* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @RDS_PTYTATP, align 4
  %110 = call i32 (i32, i32, ...) @rds_cmd(i32 %108, i32 %109, i32* %10, i32 1)
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %151, label %113

113:                                              ; preds = %105
  %114 = load %struct.pcm20*, %struct.pcm20** %3, align 8
  %115 = getelementptr inbounds %struct.pcm20, %struct.pcm20* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %10, align 4
  %118 = and i32 %117, 1
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i32
  %123 = call i32 @v4l2_ctrl_s_ctrl(i32 %116, i32 %122)
  %124 = load %struct.pcm20*, %struct.pcm20** %3, align 8
  %125 = getelementptr inbounds %struct.pcm20, %struct.pcm20* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %10, align 4
  %128 = and i32 %127, 2
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  %133 = call i32 @v4l2_ctrl_s_ctrl(i32 %126, i32 %132)
  %134 = load %struct.pcm20*, %struct.pcm20** %3, align 8
  %135 = getelementptr inbounds %struct.pcm20, %struct.pcm20* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %10, align 4
  %138 = and i32 %137, 128
  %139 = icmp ne i32 %138, 0
  %140 = xor i1 %139, true
  %141 = xor i1 %140, true
  %142 = zext i1 %141 to i32
  %143 = call i32 @v4l2_ctrl_s_ctrl(i32 %136, i32 %142)
  %144 = load %struct.pcm20*, %struct.pcm20** %3, align 8
  %145 = getelementptr inbounds %struct.pcm20, %struct.pcm20* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %10, align 4
  %148 = ashr i32 %147, 2
  %149 = and i32 %148, 31
  %150 = call i32 @v4l2_ctrl_s_ctrl(i32 %146, i32 %149)
  br label %151

151:                                              ; preds = %113, %105
  br label %152

152:                                              ; preds = %151, %100
  %153 = load i32, i32* %8, align 4
  %154 = ashr i32 %153, 4
  %155 = and i32 %154, 1
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %180

157:                                              ; preds = %152
  %158 = load %struct.pcm20*, %struct.pcm20** %3, align 8
  %159 = getelementptr inbounds %struct.pcm20, %struct.pcm20* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @RDS_TEXT, align 4
  %162 = getelementptr inbounds [66 x i8], [66 x i8]* %7, i64 0, i64 0
  %163 = call i32 (i32, i32, ...) @rds_cmd(i32 %160, i32 %161, i8* %162, i32 65)
  store i32 %163, i32* %9, align 4
  %164 = getelementptr inbounds [66 x i8], [66 x i8]* %7, i64 0, i64 65
  store i8 0, i8* %164, align 1
  %165 = load i32, i32* %9, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %179, label %167

167:                                              ; preds = %157
  %168 = getelementptr inbounds [66 x i8], [66 x i8]* %7, i64 0, i64 0
  %169 = getelementptr inbounds i8, i8* %168, i64 1
  %170 = call i64 @sanitize(i8* %169, i32 64)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %167
  %173 = load %struct.pcm20*, %struct.pcm20** %3, align 8
  %174 = getelementptr inbounds %struct.pcm20, %struct.pcm20* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = getelementptr inbounds [66 x i8], [66 x i8]* %7, i64 0, i64 0
  %177 = getelementptr inbounds i8, i8* %176, i64 1
  %178 = call i32 @v4l2_ctrl_s_ctrl_string(i32 %175, i8* %177)
  br label %179

179:                                              ; preds = %172, %167, %157
  br label %180

180:                                              ; preds = %179, %152
  br label %13

181:                                              ; preds = %17
  ret i32 0
}

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @rds_cmd(i32, i32, ...) #1

declare dso_local i32 @v4l2_ctrl_s_ctrl_string(i32, i8*) #1

declare dso_local i32 @v4l2_ctrl_s_ctrl(i32, i32) #1

declare dso_local i64 @sanitize(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
