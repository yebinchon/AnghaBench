; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_init_interrupt_scheme.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_init_interrupt_scheme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_pf = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_pf*)* @ice_init_interrupt_scheme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_init_interrupt_scheme(%struct.ice_pf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ice_pf*, align 8
  %4 = alloca i32, align 4
  store %struct.ice_pf* %0, %struct.ice_pf** %3, align 8
  %5 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %6 = call i32 @ice_ena_msix_range(%struct.ice_pf* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %52

11:                                               ; preds = %1
  %12 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %13 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 4, %17
  %19 = add i64 8, %18
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.TYPE_4__* @devm_kzalloc(i32* %15, i32 %20, i32 %21)
  %23 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %24 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %23, i32 0, i32 1
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %24, align 8
  %25 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %26 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = icmp ne %struct.TYPE_4__* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %11
  %30 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %31 = call i32 @ice_dis_msix(%struct.ice_pf* %30)
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %52

34:                                               ; preds = %11
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %37 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %40 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 4
  %43 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %44 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %49 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i32 %47, i32* %51, align 4
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %34, %29, %9
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @ice_ena_msix_range(%struct.ice_pf*) #1

declare dso_local %struct.TYPE_4__* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @ice_dis_msix(%struct.ice_pf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
