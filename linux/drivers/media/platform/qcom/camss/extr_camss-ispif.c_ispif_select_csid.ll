; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-ispif.c_ispif_select_csid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-ispif.c_ispif_select_csid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ispif_device = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ispif_device*, i32, i32, i32, i32)* @ispif_select_csid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ispif_select_csid(%struct.ispif_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ispif_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ispif_device* %0, %struct.ispif_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.ispif_device*, %struct.ispif_device** %6, align 8
  %13 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i64 @ISPIF_VFE_m_INTF_INPUT_SEL(i32 %15)
  %17 = add nsw i64 %14, %16
  %18 = call i32 @readl_relaxed(i64 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %94 [
    i32 132, label %20
    i32 130, label %34
    i32 131, label %49
    i32 129, label %64
    i32 128, label %79
  ]

20:                                               ; preds = %5
  %21 = call i32 @BIT(i32 1)
  %22 = call i32 @BIT(i32 0)
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %11, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %11, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %29, %20
  br label %94

34:                                               ; preds = %5
  %35 = call i32 @BIT(i32 5)
  %36 = call i32 @BIT(i32 4)
  %37 = or i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %11, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %34
  %44 = load i32, i32* %8, align 4
  %45 = shl i32 %44, 4
  %46 = load i32, i32* %11, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %43, %34
  br label %94

49:                                               ; preds = %5
  %50 = call i32 @BIT(i32 9)
  %51 = call i32 @BIT(i32 8)
  %52 = or i32 %50, %51
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %11, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %49
  %59 = load i32, i32* %8, align 4
  %60 = shl i32 %59, 8
  %61 = load i32, i32* %11, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %11, align 4
  br label %63

63:                                               ; preds = %58, %49
  br label %94

64:                                               ; preds = %5
  %65 = call i32 @BIT(i32 13)
  %66 = call i32 @BIT(i32 12)
  %67 = or i32 %65, %66
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %11, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %64
  %74 = load i32, i32* %8, align 4
  %75 = shl i32 %74, 12
  %76 = load i32, i32* %11, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %73, %64
  br label %94

79:                                               ; preds = %5
  %80 = call i32 @BIT(i32 21)
  %81 = call i32 @BIT(i32 20)
  %82 = or i32 %80, %81
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %11, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %79
  %89 = load i32, i32* %8, align 4
  %90 = shl i32 %89, 20
  %91 = load i32, i32* %11, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %88, %79
  br label %94

94:                                               ; preds = %5, %93, %78, %63, %48, %33
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.ispif_device*, %struct.ispif_device** %6, align 8
  %97 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i64 @ISPIF_VFE_m_INTF_INPUT_SEL(i32 %99)
  %101 = add nsw i64 %98, %100
  %102 = call i32 @writel(i32 %95, i64 %101)
  ret void
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i64 @ISPIF_VFE_m_INTF_INPUT_SEL(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
