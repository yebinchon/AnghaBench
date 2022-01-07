; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-video.c_cx88_video_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-video.c_cx88_video_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { i32, i32, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [50 x i8] c"video_mux: %d [vmux=%d,gpio=0x%x,0x%x,0x%x,0x%x]\0A\00", align 1
@MO_INPUT_FORMAT = common dso_local global i32 0, align 4
@MO_GP3_IO = common dso_local global i32 0, align 4
@MO_GP0_IO = common dso_local global i32 0, align 4
@MO_GP1_IO = common dso_local global i32 0, align 4
@MO_GP2_IO = common dso_local global i32 0, align 4
@MO_AFECFG_IO = common dso_local global i32 0, align 4
@MO_FILTER_EVEN = common dso_local global i32 0, align 4
@MO_FILTER_ODD = common dso_local global i32 0, align 4
@audio = common dso_local global i32 0, align 4
@s_routing = common dso_local global i32 0, align 4
@CX88_VMUX_TELEVISION = common dso_local global i32 0, align 4
@CX88_VMUX_CABLE = common dso_local global i32 0, align 4
@WW_I2SADC = common dso_local global i32 0, align 4
@AUD_I2SCNTL = common dso_local global i32 0, align 4
@AUD_CTL = common dso_local global i32 0, align 4
@EN_I2SIN_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx88_video_mux(%struct.cx88_core* %0, i32 %1) #0 {
  %3 = alloca %struct.cx88_core*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_2__, align 8
  %6 = alloca %struct.TYPE_2__, align 8
  %7 = alloca %struct.TYPE_2__, align 8
  %8 = alloca %struct.TYPE_2__, align 8
  %9 = alloca %struct.TYPE_2__, align 8
  %10 = alloca %struct.TYPE_2__, align 8
  %11 = alloca %struct.TYPE_2__, align 8
  %12 = alloca %struct.TYPE_2__, align 8
  %13 = alloca %struct.TYPE_2__, align 8
  %14 = alloca %struct.TYPE_2__, align 8
  %15 = alloca %struct.TYPE_2__, align 8
  %16 = alloca %struct.TYPE_2__, align 8
  %17 = alloca %struct.TYPE_2__, align 8
  %18 = alloca %struct.TYPE_2__, align 8
  %19 = alloca %struct.TYPE_2__, align 8
  store %struct.cx88_core* %0, %struct.cx88_core** %3, align 8
  store i32 %1, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  call void @INPUT(%struct.TYPE_2__* sret %5, i32 %21)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %4, align 4
  call void @INPUT(%struct.TYPE_2__* sret %6, i32 %24)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %4, align 4
  call void @INPUT(%struct.TYPE_2__* sret %7, i32 %27)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %4, align 4
  call void @INPUT(%struct.TYPE_2__* sret %8, i32 %30)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %4, align 4
  call void @INPUT(%struct.TYPE_2__* sret %9, i32 %33)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23, i32 %26, i32 %29, i32 %32, i32 %35)
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %39 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @MO_INPUT_FORMAT, align 4
  %41 = load i32, i32* %4, align 4
  call void @INPUT(%struct.TYPE_2__* sret %10, i32 %41)
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = shl i32 %43, 14
  %45 = call i32 @cx_andor(i32 %40, i32 49152, i32 %44)
  %46 = load i32, i32* @MO_GP3_IO, align 4
  %47 = load i32, i32* %4, align 4
  call void @INPUT(%struct.TYPE_2__* sret %11, i32 %47)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @cx_write(i32 %46, i32 %49)
  %51 = load i32, i32* @MO_GP0_IO, align 4
  %52 = load i32, i32* %4, align 4
  call void @INPUT(%struct.TYPE_2__* sret %12, i32 %52)
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @cx_write(i32 %51, i32 %54)
  %56 = load i32, i32* @MO_GP1_IO, align 4
  %57 = load i32, i32* %4, align 4
  call void @INPUT(%struct.TYPE_2__* sret %13, i32 %57)
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @cx_write(i32 %56, i32 %59)
  %61 = load i32, i32* @MO_GP2_IO, align 4
  %62 = load i32, i32* %4, align 4
  call void @INPUT(%struct.TYPE_2__* sret %14, i32 %62)
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @cx_write(i32 %61, i32 %64)
  %66 = load i32, i32* %4, align 4
  call void @INPUT(%struct.TYPE_2__* sret %15, i32 %66)
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  switch i32 %68, label %78 [
    i32 128, label %69
  ]

69:                                               ; preds = %2
  %70 = load i32, i32* @MO_AFECFG_IO, align 4
  %71 = call i32 @cx_set(i32 %70, i32 1)
  %72 = load i32, i32* @MO_INPUT_FORMAT, align 4
  %73 = call i32 @cx_set(i32 %72, i32 65552)
  %74 = load i32, i32* @MO_FILTER_EVEN, align 4
  %75 = call i32 @cx_set(i32 %74, i32 8224)
  %76 = load i32, i32* @MO_FILTER_ODD, align 4
  %77 = call i32 @cx_set(i32 %76, i32 8224)
  br label %87

78:                                               ; preds = %2
  %79 = load i32, i32* @MO_AFECFG_IO, align 4
  %80 = call i32 @cx_clear(i32 %79, i32 1)
  %81 = load i32, i32* @MO_INPUT_FORMAT, align 4
  %82 = call i32 @cx_clear(i32 %81, i32 65552)
  %83 = load i32, i32* @MO_FILTER_EVEN, align 4
  %84 = call i32 @cx_clear(i32 %83, i32 8224)
  %85 = load i32, i32* @MO_FILTER_ODD, align 4
  %86 = call i32 @cx_clear(i32 %85, i32 8224)
  br label %87

87:                                               ; preds = %78, %69
  %88 = load i32, i32* %4, align 4
  call void @INPUT(%struct.TYPE_2__* sret %16, i32 %88)
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 6
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %130

92:                                               ; preds = %87
  %93 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %94 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %92
  %98 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %99 = load i32, i32* @audio, align 4
  %100 = load i32, i32* @s_routing, align 4
  %101 = load i32, i32* %4, align 4
  call void @INPUT(%struct.TYPE_2__* sret %17, i32 %101)
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 6
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @call_all(%struct.cx88_core* %98, i32 %99, i32 %100, i64 %103, i32 0, i32 0)
  br label %105

105:                                              ; preds = %97, %92
  %106 = load i32, i32* %4, align 4
  call void @INPUT(%struct.TYPE_2__* sret %18, i32 %106)
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @CX88_VMUX_TELEVISION, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %123

111:                                              ; preds = %105
  %112 = load i32, i32* %4, align 4
  call void @INPUT(%struct.TYPE_2__* sret %19, i32 %112)
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @CX88_VMUX_CABLE, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %111
  %118 = load i32, i32* @WW_I2SADC, align 4
  %119 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %120 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  %121 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %122 = call i32 @cx88_set_tvaudio(%struct.cx88_core* %121)
  br label %129

123:                                              ; preds = %111, %105
  %124 = load i32, i32* @AUD_I2SCNTL, align 4
  %125 = call i32 @cx_write(i32 %124, i32 0)
  %126 = load i32, i32* @AUD_CTL, align 4
  %127 = load i32, i32* @EN_I2SIN_ENABLE, align 4
  %128 = call i32 @cx_clear(i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %123, %117
  br label %130

130:                                              ; preds = %129, %87
  ret i32 0
}

declare dso_local i32 @dprintk(i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local void @INPUT(%struct.TYPE_2__* sret, i32) #1

declare dso_local i32 @cx_andor(i32, i32, i32) #1

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @cx_set(i32, i32) #1

declare dso_local i32 @cx_clear(i32, i32) #1

declare dso_local i32 @call_all(%struct.cx88_core*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @cx88_set_tvaudio(%struct.cx88_core*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
