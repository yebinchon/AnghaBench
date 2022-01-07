; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/lis3lv02d/extr_lis3lv02d.c_lis3lv02d_poweron.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/lis3lv02d/extr_lis3lv02d.c_lis3lv02d_poweron.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lis3lv02d = type { i64, i64, i32 (%struct.lis3lv02d*, i32, i32)*, i32 (%struct.lis3lv02d*, i32, i32*)*, i64, {}* }

@CTRL_REG2 = common dso_local global i32 0, align 4
@WAI_12B = common dso_local global i64 0, align 8
@CTRL2_BDU = common dso_local global i32 0, align 4
@CTRL2_BOOT = common dso_local global i32 0, align 4
@WAI_3DLH = common dso_local global i64 0, align 8
@CTRL2_BOOT_3DLH = common dso_local global i32 0, align 4
@CTRL2_BOOT_8B = common dso_local global i32 0, align 4
@CTRL_REG4 = common dso_local global i32 0, align 4
@CTRL4_BDU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lis3lv02d_poweron(%struct.lis3lv02d* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lis3lv02d*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lis3lv02d* %0, %struct.lis3lv02d** %3, align 8
  %6 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %7 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %6, i32 0, i32 5
  %8 = bitcast {}** %7 to i32 (%struct.lis3lv02d*)**
  %9 = load i32 (%struct.lis3lv02d*)*, i32 (%struct.lis3lv02d*)** %8, align 8
  %10 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %11 = call i32 %9(%struct.lis3lv02d* %10)
  %12 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %13 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %80

16:                                               ; preds = %1
  %17 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %18 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %17, i32 0, i32 3
  %19 = load i32 (%struct.lis3lv02d*, i32, i32*)*, i32 (%struct.lis3lv02d*, i32, i32*)** %18, align 8
  %20 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %21 = load i32, i32* @CTRL_REG2, align 4
  %22 = call i32 %19(%struct.lis3lv02d* %20, i32 %21, i32* %5)
  %23 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %24 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @WAI_12B, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %16
  %29 = load i32, i32* @CTRL2_BDU, align 4
  %30 = load i32, i32* @CTRL2_BOOT, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  br label %49

34:                                               ; preds = %16
  %35 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %36 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @WAI_3DLH, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i32, i32* @CTRL2_BOOT_3DLH, align 4
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  br label %48

44:                                               ; preds = %34
  %45 = load i32, i32* @CTRL2_BOOT_8B, align 4
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %44, %40
  br label %49

49:                                               ; preds = %48, %28
  %50 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %51 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %50, i32 0, i32 2
  %52 = load i32 (%struct.lis3lv02d*, i32, i32)*, i32 (%struct.lis3lv02d*, i32, i32)** %51, align 8
  %53 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %54 = load i32, i32* @CTRL_REG2, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 %52(%struct.lis3lv02d* %53, i32 %54, i32 %55)
  %57 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %58 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @WAI_3DLH, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %79

62:                                               ; preds = %49
  %63 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %64 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %63, i32 0, i32 3
  %65 = load i32 (%struct.lis3lv02d*, i32, i32*)*, i32 (%struct.lis3lv02d*, i32, i32*)** %64, align 8
  %66 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %67 = load i32, i32* @CTRL_REG4, align 4
  %68 = call i32 %65(%struct.lis3lv02d* %66, i32 %67, i32* %5)
  %69 = load i32, i32* @CTRL4_BDU, align 4
  %70 = load i32, i32* %5, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %5, align 4
  %72 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %73 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %72, i32 0, i32 2
  %74 = load i32 (%struct.lis3lv02d*, i32, i32)*, i32 (%struct.lis3lv02d*, i32, i32)** %73, align 8
  %75 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %76 = load i32, i32* @CTRL_REG4, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 %74(%struct.lis3lv02d* %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %62, %49
  br label %80

80:                                               ; preds = %79, %1
  %81 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %82 = call i32 @lis3lv02d_get_pwron_wait(%struct.lis3lv02d* %81)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* %4, align 4
  store i32 %86, i32* %2, align 4
  br label %96

87:                                               ; preds = %80
  %88 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %89 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load %struct.lis3lv02d*, %struct.lis3lv02d** %3, align 8
  %94 = call i32 @lis3_context_restore(%struct.lis3lv02d* %93)
  br label %95

95:                                               ; preds = %92, %87
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %95, %85
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @lis3lv02d_get_pwron_wait(%struct.lis3lv02d*) #1

declare dso_local i32 @lis3_context_restore(%struct.lis3lv02d*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
