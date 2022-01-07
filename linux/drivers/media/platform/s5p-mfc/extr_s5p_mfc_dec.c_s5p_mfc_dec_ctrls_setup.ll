; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_dec.c_s5p_mfc_dec_ctrls_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_dec.c_s5p_mfc_dec_ctrls_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.s5p_mfc_ctx = type { %struct.TYPE_7__**, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.v4l2_ctrl_config = type { i64, i32, i32, i32, i32, i32, i32, i32, i32* }

@NUM_CTRLS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"v4l2_ctrl_handler_init failed\0A\00", align 1
@controls = common dso_local global %struct.TYPE_9__* null, align 8
@s5p_mfc_dec_ctrl_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Adding control (%d) failed\0A\00", align 1
@V4L2_CTRL_FLAG_VOLATILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s5p_mfc_dec_ctrls_setup(%struct.s5p_mfc_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5p_mfc_ctx*, align 8
  %4 = alloca %struct.v4l2_ctrl_config, align 8
  %5 = alloca i32, align 4
  store %struct.s5p_mfc_ctx* %0, %struct.s5p_mfc_ctx** %3, align 8
  %6 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %6, i32 0, i32 1
  %8 = load i32, i32* @NUM_CTRLS, align 4
  %9 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_8__* %7, i32 %8)
  %10 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = call i32 (i8*, ...) @mfc_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %2, align 4
  br label %184

21:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %180, %21
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @NUM_CTRLS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %183

26:                                               ; preds = %22
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** @controls, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @IS_MFC51_PRIV(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %97

35:                                               ; preds = %26
  %36 = call i32 @memset(%struct.v4l2_ctrl_config* %4, i32 0, i32 48)
  %37 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %4, i32 0, i32 8
  store i32* @s5p_mfc_dec_ctrl_ops, i32** %37, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** @controls, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %4, i32 0, i32 7
  store i32 %43, i32* %44, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** @controls, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %4, i32 0, i32 6
  store i32 %50, i32* %51, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** @controls, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %4, i32 0, i32 5
  store i32 %57, i32* %58, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** @controls, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %4, i32 0, i32 4
  store i32 %64, i32* %65, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** @controls, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %4, i32 0, i32 3
  store i32 %71, i32* %72, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** @controls, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %4, i32 0, i32 2
  store i32 %78, i32* %79, align 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** @controls, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %4, i32 0, i32 1
  store i32 %85, i32* %86, align 8
  %87 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %4, i32 0, i32 0
  store i64 0, i64* %87, align 8
  %88 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %89 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %88, i32 0, i32 1
  %90 = call %struct.TYPE_7__* @v4l2_ctrl_new_custom(%struct.TYPE_8__* %89, %struct.v4l2_ctrl_config* %4, i32* null)
  %91 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %92 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %91, i32 0, i32 0
  %93 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %93, i64 %95
  store %struct.TYPE_7__* %90, %struct.TYPE_7__** %96, align 8
  br label %137

97:                                               ; preds = %26
  %98 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %99 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %98, i32 0, i32 1
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** @controls, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** @controls, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** @controls, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** @controls, align 8
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** @controls, align 8
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call %struct.TYPE_7__* @v4l2_ctrl_new_std(%struct.TYPE_8__* %99, i32* @s5p_mfc_dec_ctrl_ops, i32 %105, i32 %111, i32 %117, i32 %123, i32 %129)
  %131 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %132 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %131, i32 0, i32 0
  %133 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %132, align 8
  %134 = load i32, i32* %5, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %133, i64 %135
  store %struct.TYPE_7__* %130, %struct.TYPE_7__** %136, align 8
  br label %137

137:                                              ; preds = %97, %35
  %138 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %139 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %137
  %144 = load i32, i32* %5, align 4
  %145 = call i32 (i8*, ...) @mfc_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %144)
  %146 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %147 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  store i32 %149, i32* %2, align 4
  br label %184

150:                                              ; preds = %137
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** @controls, align 8
  %152 = load i32, i32* %5, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %179

158:                                              ; preds = %150
  %159 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %160 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %159, i32 0, i32 0
  %161 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %160, align 8
  %162 = load i32, i32* %5, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %161, i64 %163
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %164, align 8
  %166 = icmp ne %struct.TYPE_7__* %165, null
  br i1 %166, label %167, label %179

167:                                              ; preds = %158
  %168 = load i32, i32* @V4L2_CTRL_FLAG_VOLATILE, align 4
  %169 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %3, align 8
  %170 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %169, i32 0, i32 0
  %171 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %170, align 8
  %172 = load i32, i32* %5, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %171, i64 %173
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %177, %168
  store i32 %178, i32* %176, align 4
  br label %179

179:                                              ; preds = %167, %158, %150
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %5, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %5, align 4
  br label %22

183:                                              ; preds = %22
  store i32 0, i32* %2, align 4
  br label %184

184:                                              ; preds = %183, %143, %15
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @mfc_err(i8*, ...) #1

declare dso_local i64 @IS_MFC51_PRIV(i32) #1

declare dso_local i32 @memset(%struct.v4l2_ctrl_config*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @v4l2_ctrl_new_custom(%struct.TYPE_8__*, %struct.v4l2_ctrl_config*, i32*) #1

declare dso_local %struct.TYPE_7__* @v4l2_ctrl_new_std(%struct.TYPE_8__*, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
