; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-i2c-core.c_pvr2_i2c_core_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-i2c-core.c_pvr2_i2c_core_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.pvr2_hdw*, i32*, %struct.TYPE_8__, i32 }
%struct.pvr2_hdw = type { i64, i64, i32, i32**, %struct.TYPE_10__, i32, i32, %struct.TYPE_9__*, i32, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_8__ = type { i32* }

@PVR2_I2C_FUNC_CNT = common dso_local global i32 0, align 4
@pvr2_i2c_basic_op = common dso_local global i32* null, align 8
@ir_mode = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"%s: IR disabled\0A\00", align 1
@i2c_black_hole = common dso_local global i32* null, align 8
@PVR2_IR_SCHEME_24XXX = common dso_local global i64 0, align 8
@i2c_24xxx_ir = common dso_local global i32* null, align 8
@i2c_hack_cx25840 = common dso_local global i32* null, align 8
@i2c_hack_wm8775 = common dso_local global i32* null, align 8
@pvr2_i2c_adap_template = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@pvr2_i2c_algo_template = common dso_local global i32 0, align 4
@PVR2_TRACE_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"Device has newer IR hardware; disabling unneeded virtual IR device\00", align 1
@PVR2_IR_SCHEME_24XXX_MCE = common dso_local global i64 0, align 8
@i2c_scan = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pvr2_i2c_core_init(%struct.pvr2_hdw* %0) #0 {
  %2 = alloca %struct.pvr2_hdw*, align 8
  %3 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %16, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @PVR2_I2C_FUNC_CNT, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %19

8:                                                ; preds = %4
  %9 = load i32*, i32** @pvr2_i2c_basic_op, align 8
  %10 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %11 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %10, i32 0, i32 3
  %12 = load i32**, i32*** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i32*, i32** %12, i64 %14
  store i32* %9, i32** %15, align 8
  br label %16

16:                                               ; preds = %8
  %17 = load i32, i32* %3, align 4
  %18 = add i32 %17, 1
  store i32 %18, i32* %3, align 4
  br label %4

19:                                               ; preds = %4
  %20 = load i32*, i32** @ir_mode, align 8
  %21 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %22 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %19
  %28 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %29 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32*, i32** @i2c_black_hole, align 8
  %33 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %34 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %33, i32 0, i32 3
  %35 = load i32**, i32*** %34, align 8
  %36 = getelementptr inbounds i32*, i32** %35, i64 24
  store i32* %32, i32** %36, align 8
  br label %59

37:                                               ; preds = %19
  %38 = load i32*, i32** @ir_mode, align 8
  %39 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %40 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %58

45:                                               ; preds = %37
  %46 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %47 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PVR2_IR_SCHEME_24XXX, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load i32*, i32** @i2c_24xxx_ir, align 8
  %53 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %54 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %53, i32 0, i32 3
  %55 = load i32**, i32*** %54, align 8
  %56 = getelementptr inbounds i32*, i32** %55, i64 24
  store i32* %52, i32** %56, align 8
  br label %57

57:                                               ; preds = %51, %45
  br label %58

58:                                               ; preds = %57, %37
  br label %59

59:                                               ; preds = %58, %27
  %60 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %61 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %60, i32 0, i32 9
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load i32*, i32** @i2c_hack_cx25840, align 8
  %68 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %69 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %68, i32 0, i32 3
  %70 = load i32**, i32*** %69, align 8
  %71 = getelementptr inbounds i32*, i32** %70, i64 68
  store i32* %67, i32** %71, align 8
  br label %72

72:                                               ; preds = %66, %59
  %73 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %74 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %73, i32 0, i32 9
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load i32*, i32** @i2c_hack_wm8775, align 8
  %81 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %82 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %81, i32 0, i32 3
  %83 = load i32**, i32*** %82, align 8
  %84 = getelementptr inbounds i32*, i32** %83, i64 27
  store i32* %80, i32** %84, align 8
  br label %85

85:                                               ; preds = %79, %72
  %86 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %87 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %86, i32 0, i32 4
  %88 = bitcast %struct.TYPE_10__* %87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %88, i8* align 8 bitcast (%struct.TYPE_10__* @pvr2_i2c_adap_template to i8*), i64 32, i1 false)
  %89 = load i32, i32* @pvr2_i2c_algo_template, align 4
  %90 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %91 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %90, i32 0, i32 6
  store i32 %89, i32* %91, align 4
  %92 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %93 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %97 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %96, i32 0, i32 8
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @strscpy(i32 %95, i32 %98, i32 4)
  %100 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %101 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %100, i32 0, i32 7
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %105 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  store i32* %103, i32** %107, align 8
  %108 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %109 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %108, i32 0, i32 6
  %110 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %111 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  store i32* %109, i32** %112, align 8
  %113 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %114 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %115 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  store %struct.pvr2_hdw* %113, %struct.pvr2_hdw** %116, align 8
  %117 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %118 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %117, i32 0, i32 2
  store i32 1, i32* %118, align 8
  %119 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %120 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %119, i32 0, i32 4
  %121 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %122 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %121, i32 0, i32 5
  %123 = call i32 @i2c_set_adapdata(%struct.TYPE_10__* %120, i32* %122)
  %124 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %125 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %124, i32 0, i32 4
  %126 = call i32 @i2c_add_adapter(%struct.TYPE_10__* %125)
  %127 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %128 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %127, i32 0, i32 3
  %129 = load i32**, i32*** %128, align 8
  %130 = getelementptr inbounds i32*, i32** %129, i64 24
  %131 = load i32*, i32** %130, align 8
  %132 = load i32*, i32** @i2c_24xxx_ir, align 8
  %133 = icmp eq i32* %131, %132
  br i1 %133, label %134, label %149

134:                                              ; preds = %85
  %135 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %136 = call i64 @do_i2c_probe(%struct.pvr2_hdw* %135, i32 113)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %134
  %139 = load i32, i32* @PVR2_TRACE_INFO, align 4
  %140 = call i32 @pvr2_trace(i32 %139, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  %141 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %142 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %141, i32 0, i32 3
  %143 = load i32**, i32*** %142, align 8
  %144 = getelementptr inbounds i32*, i32** %143, i64 24
  store i32* null, i32** %144, align 8
  %145 = load i64, i64* @PVR2_IR_SCHEME_24XXX_MCE, align 8
  %146 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %147 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %146, i32 0, i32 1
  store i64 %145, i64* %147, align 8
  br label %148

148:                                              ; preds = %138, %134
  br label %149

149:                                              ; preds = %148, %85
  %150 = load i64, i64* @i2c_scan, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %154 = call i32 @do_i2c_scan(%struct.pvr2_hdw* %153)
  br label %155

155:                                              ; preds = %152, %149
  %156 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %157 = call i32 @pvr2_i2c_register_ir(%struct.pvr2_hdw* %156)
  ret void
}

declare dso_local i32 @pr_info(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_10__*) #1

declare dso_local i64 @do_i2c_probe(%struct.pvr2_hdw*, i32) #1

declare dso_local i32 @pvr2_trace(i32, i8*) #1

declare dso_local i32 @do_i2c_scan(%struct.pvr2_hdw*) #1

declare dso_local i32 @pvr2_i2c_register_ir(%struct.pvr2_hdw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
