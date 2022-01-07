; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-ispif.c_ispif_select_cid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-ispif.c_ispif_select_cid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ispif_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ispif_device*, i32, i32, i32, i32)* @ispif_select_cid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ispif_select_cid(%struct.ispif_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ispif_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ispif_device* %0, %struct.ispif_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %8, align 4
  %15 = shl i32 1, %14
  store i32 %15, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %32 [
    i32 132, label %17
    i32 130, label %20
    i32 131, label %23
    i32 129, label %26
    i32 128, label %29
  ]

17:                                               ; preds = %5
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @ISPIF_VFE_m_PIX_INTF_n_CID_MASK(i32 %18, i32 0)
  store i32 %19, i32* %12, align 4
  br label %32

20:                                               ; preds = %5
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @ISPIF_VFE_m_RDI_INTF_n_CID_MASK(i32 %21, i32 0)
  store i32 %22, i32* %12, align 4
  br label %32

23:                                               ; preds = %5
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @ISPIF_VFE_m_PIX_INTF_n_CID_MASK(i32 %24, i32 1)
  store i32 %25, i32* %12, align 4
  br label %32

26:                                               ; preds = %5
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @ISPIF_VFE_m_RDI_INTF_n_CID_MASK(i32 %27, i32 1)
  store i32 %28, i32* %12, align 4
  br label %32

29:                                               ; preds = %5
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @ISPIF_VFE_m_RDI_INTF_n_CID_MASK(i32 %30, i32 2)
  store i32 %31, i32* %12, align 4
  br label %32

32:                                               ; preds = %5, %29, %26, %23, %20, %17
  %33 = load %struct.ispif_device*, %struct.ispif_device** %6, align 8
  %34 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %12, align 4
  %37 = add nsw i32 %35, %36
  %38 = call i32 @readl_relaxed(i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %13, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %13, align 4
  br label %50

45:                                               ; preds = %32
  %46 = load i32, i32* %11, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %13, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %13, align 4
  br label %50

50:                                               ; preds = %45, %41
  %51 = load i32, i32* %13, align 4
  %52 = load %struct.ispif_device*, %struct.ispif_device** %6, align 8
  %53 = getelementptr inbounds %struct.ispif_device, %struct.ispif_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %54, %55
  %57 = call i32 @writel(i32 %51, i32 %56)
  ret void
}

declare dso_local i32 @ISPIF_VFE_m_PIX_INTF_n_CID_MASK(i32, i32) #1

declare dso_local i32 @ISPIF_VFE_m_RDI_INTF_n_CID_MASK(i32, i32) #1

declare dso_local i32 @readl_relaxed(i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
