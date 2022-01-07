; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-misc.c_pwc_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-misc.c_pwc_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_device = type { i32, i32, i32, i64, i64, i32 }

@PSZ_SQCIF = common dso_local global i32 0, align 4
@PSZ_QCIF = common dso_local global i32 0, align 4
@PSZ_CIF = common dso_local global i32 0, align 4
@PSZ_QSIF = common dso_local global i32 0, align 4
@PSZ_SIF = common dso_local global i32 0, align 4
@PSZ_VGA = common dso_local global i32 0, align 4
@TOUCAM_HEADER_SIZE = common dso_local global i64 0, align 8
@TOUCAM_TRAILER_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pwc_construct(%struct.pwc_device* %0) #0 {
  %2 = alloca %struct.pwc_device*, align 8
  store %struct.pwc_device* %0, %struct.pwc_device** %2, align 8
  %3 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %4 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %3, i32 0, i32 5
  %5 = load i32, i32* %4, align 8
  %6 = call i64 @DEVICE_USE_CODEC1(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %1
  %9 = load i32, i32* @PSZ_SQCIF, align 4
  %10 = shl i32 1, %9
  %11 = load i32, i32* @PSZ_QCIF, align 4
  %12 = shl i32 1, %11
  %13 = or i32 %10, %12
  %14 = load i32, i32* @PSZ_CIF, align 4
  %15 = shl i32 1, %14
  %16 = or i32 %13, %15
  %17 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %18 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %20 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %19, i32 0, i32 1
  store i32 2, i32* %20, align 4
  %21 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %22 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %21, i32 0, i32 2
  store i32 4, i32* %22, align 8
  %23 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %24 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %23, i32 0, i32 4
  store i64 0, i64* %24, align 8
  %25 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %26 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  br label %83

27:                                               ; preds = %1
  %28 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %29 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @DEVICE_USE_CODEC3(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %27
  %34 = load i32, i32* @PSZ_QSIF, align 4
  %35 = shl i32 1, %34
  %36 = load i32, i32* @PSZ_SIF, align 4
  %37 = shl i32 1, %36
  %38 = or i32 %35, %37
  %39 = load i32, i32* @PSZ_VGA, align 4
  %40 = shl i32 1, %39
  %41 = or i32 %38, %40
  %42 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %43 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %45 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %44, i32 0, i32 1
  store i32 3, i32* %45, align 4
  %46 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %47 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %46, i32 0, i32 2
  store i32 5, i32* %47, align 8
  %48 = load i64, i64* @TOUCAM_HEADER_SIZE, align 8
  %49 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %50 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %49, i32 0, i32 4
  store i64 %48, i64* %50, align 8
  %51 = load i64, i64* @TOUCAM_TRAILER_SIZE, align 8
  %52 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %53 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %52, i32 0, i32 3
  store i64 %51, i64* %53, align 8
  br label %82

54:                                               ; preds = %27
  %55 = load i32, i32* @PSZ_SQCIF, align 4
  %56 = shl i32 1, %55
  %57 = load i32, i32* @PSZ_QSIF, align 4
  %58 = shl i32 1, %57
  %59 = or i32 %56, %58
  %60 = load i32, i32* @PSZ_QCIF, align 4
  %61 = shl i32 1, %60
  %62 = or i32 %59, %61
  %63 = load i32, i32* @PSZ_SIF, align 4
  %64 = shl i32 1, %63
  %65 = or i32 %62, %64
  %66 = load i32, i32* @PSZ_CIF, align 4
  %67 = shl i32 1, %66
  %68 = or i32 %65, %67
  %69 = load i32, i32* @PSZ_VGA, align 4
  %70 = shl i32 1, %69
  %71 = or i32 %68, %70
  %72 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %73 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %75 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %74, i32 0, i32 1
  store i32 3, i32* %75, align 4
  %76 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %77 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %76, i32 0, i32 2
  store i32 4, i32* %77, align 8
  %78 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %79 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %78, i32 0, i32 4
  store i64 0, i64* %79, align 8
  %80 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %81 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %80, i32 0, i32 3
  store i64 0, i64* %81, align 8
  br label %82

82:                                               ; preds = %54, %33
  br label %83

83:                                               ; preds = %82, %8
  ret void
}

declare dso_local i64 @DEVICE_USE_CODEC1(i32) #1

declare dso_local i64 @DEVICE_USE_CODEC3(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
