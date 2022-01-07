; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-flash-led-class.c_v4l2_flash_init_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-flash-led-class.c_v4l2_flash_init_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_flash = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.v4l2_ctrl** }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__*, i32 }
%struct.v4l2_ctrl = type { i32 }
%struct.v4l2_flash_config = type { i32 }
%struct.v4l2_flash_ctrl_data = type { i64, %struct.v4l2_ctrl_config }
%struct.v4l2_ctrl_config = type { i64, i32, i32, i32, i32, i32, i32 }

@STROBE_SOURCE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NUM_FLASH_CTRLS = common dso_local global i32 0, align 4
@V4L2_CID_FLASH_LED_MODE = common dso_local global i64 0, align 8
@V4L2_CID_FLASH_STROBE_SOURCE = common dso_local global i64 0, align 8
@v4l2_flash_ctrl_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_flash*, %struct.v4l2_flash_config*)* @v4l2_flash_init_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l2_flash_init_controls(%struct.v4l2_flash* %0, %struct.v4l2_flash_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_flash*, align 8
  %5 = alloca %struct.v4l2_flash_config*, align 8
  %6 = alloca %struct.v4l2_flash_ctrl_data*, align 8
  %7 = alloca %struct.v4l2_ctrl*, align 8
  %8 = alloca %struct.v4l2_ctrl_config*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.v4l2_flash* %0, %struct.v4l2_flash** %4, align 8
  store %struct.v4l2_flash_config* %1, %struct.v4l2_flash_config** %5, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.v4l2_flash*, %struct.v4l2_flash** %4, align 8
  %13 = getelementptr inbounds %struct.v4l2_flash, %struct.v4l2_flash* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @STROBE_SOURCE, align 4
  %17 = add nsw i32 %16, 1
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.v4l2_ctrl** @devm_kcalloc(i32 %15, i32 %17, i32 8, i32 %18)
  %20 = load %struct.v4l2_flash*, %struct.v4l2_flash** %4, align 8
  %21 = getelementptr inbounds %struct.v4l2_flash, %struct.v4l2_flash* %20, i32 0, i32 2
  store %struct.v4l2_ctrl** %19, %struct.v4l2_ctrl*** %21, align 8
  %22 = load %struct.v4l2_flash*, %struct.v4l2_flash** %4, align 8
  %23 = getelementptr inbounds %struct.v4l2_flash, %struct.v4l2_flash* %22, i32 0, i32 2
  %24 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %23, align 8
  %25 = icmp ne %struct.v4l2_ctrl** %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %186

29:                                               ; preds = %2
  %30 = load i32, i32* @NUM_FLASH_CTRLS, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.v4l2_flash_ctrl_data* @kcalloc(i32 %30, i32 40, i32 %31)
  store %struct.v4l2_flash_ctrl_data* %32, %struct.v4l2_flash_ctrl_data** %6, align 8
  %33 = load %struct.v4l2_flash_ctrl_data*, %struct.v4l2_flash_ctrl_data** %6, align 8
  %34 = icmp ne %struct.v4l2_flash_ctrl_data* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %186

38:                                               ; preds = %29
  %39 = load %struct.v4l2_flash*, %struct.v4l2_flash** %4, align 8
  %40 = load %struct.v4l2_flash_config*, %struct.v4l2_flash_config** %5, align 8
  %41 = load %struct.v4l2_flash_ctrl_data*, %struct.v4l2_flash_ctrl_data** %6, align 8
  %42 = call i32 @__fill_ctrl_init_data(%struct.v4l2_flash* %39, %struct.v4l2_flash_config* %40, %struct.v4l2_flash_ctrl_data* %41)
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %59, %38
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @NUM_FLASH_CTRLS, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %43
  %48 = load %struct.v4l2_flash_ctrl_data*, %struct.v4l2_flash_ctrl_data** %6, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.v4l2_flash_ctrl_data, %struct.v4l2_flash_ctrl_data* %48, i64 %50
  %52 = getelementptr inbounds %struct.v4l2_flash_ctrl_data, %struct.v4l2_flash_ctrl_data* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %55, %47
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %43

62:                                               ; preds = %43
  %63 = load %struct.v4l2_flash*, %struct.v4l2_flash** %4, align 8
  %64 = getelementptr inbounds %struct.v4l2_flash, %struct.v4l2_flash* %63, i32 0, i32 0
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_8__* %64, i32 %65)
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %156, %62
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @NUM_FLASH_CTRLS, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %159

71:                                               ; preds = %67
  %72 = load %struct.v4l2_flash_ctrl_data*, %struct.v4l2_flash_ctrl_data** %6, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.v4l2_flash_ctrl_data, %struct.v4l2_flash_ctrl_data* %72, i64 %74
  %76 = getelementptr inbounds %struct.v4l2_flash_ctrl_data, %struct.v4l2_flash_ctrl_data* %75, i32 0, i32 1
  store %struct.v4l2_ctrl_config* %76, %struct.v4l2_ctrl_config** %8, align 8
  %77 = load %struct.v4l2_flash_ctrl_data*, %struct.v4l2_flash_ctrl_data** %6, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.v4l2_flash_ctrl_data, %struct.v4l2_flash_ctrl_data* %77, i64 %79
  %81 = getelementptr inbounds %struct.v4l2_flash_ctrl_data, %struct.v4l2_flash_ctrl_data* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %71
  br label %156

85:                                               ; preds = %71
  %86 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %8, align 8
  %87 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @V4L2_CID_FLASH_LED_MODE, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %97, label %91

91:                                               ; preds = %85
  %92 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %8, align 8
  %93 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @V4L2_CID_FLASH_STROBE_SOURCE, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %113

97:                                               ; preds = %91, %85
  %98 = load %struct.v4l2_flash*, %struct.v4l2_flash** %4, align 8
  %99 = getelementptr inbounds %struct.v4l2_flash, %struct.v4l2_flash* %98, i32 0, i32 0
  %100 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %8, align 8
  %101 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %8, align 8
  %104 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %8, align 8
  %107 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %8, align 8
  %110 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std_menu(%struct.TYPE_8__* %99, i32* @v4l2_flash_ctrl_ops, i64 %102, i32 %105, i32 %108, i32 %111)
  store %struct.v4l2_ctrl* %112, %struct.v4l2_ctrl** %7, align 8
  br label %132

113:                                              ; preds = %91
  %114 = load %struct.v4l2_flash*, %struct.v4l2_flash** %4, align 8
  %115 = getelementptr inbounds %struct.v4l2_flash, %struct.v4l2_flash* %114, i32 0, i32 0
  %116 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %8, align 8
  %117 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %8, align 8
  %120 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %8, align 8
  %123 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %8, align 8
  %126 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %8, align 8
  %129 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call %struct.v4l2_ctrl* @v4l2_ctrl_new_std(%struct.TYPE_8__* %115, i32* @v4l2_flash_ctrl_ops, i64 %118, i32 %121, i32 %124, i32 %127, i32 %130)
  store %struct.v4l2_ctrl* %131, %struct.v4l2_ctrl** %7, align 8
  br label %132

132:                                              ; preds = %113, %97
  %133 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %134 = icmp ne %struct.v4l2_ctrl* %133, null
  br i1 %134, label %135, label %143

135:                                              ; preds = %132
  %136 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %8, align 8
  %137 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %140 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %135, %132
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* @STROBE_SOURCE, align 4
  %146 = icmp sle i32 %144, %145
  br i1 %146, label %147, label %155

147:                                              ; preds = %143
  %148 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %7, align 8
  %149 = load %struct.v4l2_flash*, %struct.v4l2_flash** %4, align 8
  %150 = getelementptr inbounds %struct.v4l2_flash, %struct.v4l2_flash* %149, i32 0, i32 2
  %151 = load %struct.v4l2_ctrl**, %struct.v4l2_ctrl*** %150, align 8
  %152 = load i32, i32* %9, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %151, i64 %153
  store %struct.v4l2_ctrl* %148, %struct.v4l2_ctrl** %154, align 8
  br label %155

155:                                              ; preds = %147, %143
  br label %156

156:                                              ; preds = %155, %84
  %157 = load i32, i32* %9, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %9, align 4
  br label %67

159:                                              ; preds = %67
  %160 = load %struct.v4l2_flash_ctrl_data*, %struct.v4l2_flash_ctrl_data** %6, align 8
  %161 = call i32 @kfree(%struct.v4l2_flash_ctrl_data* %160)
  %162 = load %struct.v4l2_flash*, %struct.v4l2_flash** %4, align 8
  %163 = getelementptr inbounds %struct.v4l2_flash, %struct.v4l2_flash* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %159
  %168 = load %struct.v4l2_flash*, %struct.v4l2_flash** %4, align 8
  %169 = getelementptr inbounds %struct.v4l2_flash, %struct.v4l2_flash* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  store i32 %171, i32* %10, align 4
  br label %181

172:                                              ; preds = %159
  %173 = load %struct.v4l2_flash*, %struct.v4l2_flash** %4, align 8
  %174 = getelementptr inbounds %struct.v4l2_flash, %struct.v4l2_flash* %173, i32 0, i32 0
  %175 = call i32 @v4l2_ctrl_handler_setup(%struct.TYPE_8__* %174)
  %176 = load %struct.v4l2_flash*, %struct.v4l2_flash** %4, align 8
  %177 = getelementptr inbounds %struct.v4l2_flash, %struct.v4l2_flash* %176, i32 0, i32 0
  %178 = load %struct.v4l2_flash*, %struct.v4l2_flash** %4, align 8
  %179 = getelementptr inbounds %struct.v4l2_flash, %struct.v4l2_flash* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 0
  store %struct.TYPE_8__* %177, %struct.TYPE_8__** %180, align 8
  store i32 0, i32* %3, align 4
  br label %186

181:                                              ; preds = %167
  %182 = load %struct.v4l2_flash*, %struct.v4l2_flash** %4, align 8
  %183 = getelementptr inbounds %struct.v4l2_flash, %struct.v4l2_flash* %182, i32 0, i32 0
  %184 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_8__* %183)
  %185 = load i32, i32* %10, align 4
  store i32 %185, i32* %3, align 4
  br label %186

186:                                              ; preds = %181, %172, %35, %26
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local %struct.v4l2_ctrl** @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local %struct.v4l2_flash_ctrl_data* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @__fill_ctrl_init_data(%struct.v4l2_flash*, %struct.v4l2_flash_config*, %struct.v4l2_flash_ctrl_data*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_8__*, i32) #1

declare dso_local %struct.v4l2_ctrl* @v4l2_ctrl_new_std_menu(%struct.TYPE_8__*, i32*, i64, i32, i32, i32) #1

declare dso_local %struct.v4l2_ctrl* @v4l2_ctrl_new_std(%struct.TYPE_8__*, i32*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.v4l2_flash_ctrl_data*) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.TYPE_8__*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
