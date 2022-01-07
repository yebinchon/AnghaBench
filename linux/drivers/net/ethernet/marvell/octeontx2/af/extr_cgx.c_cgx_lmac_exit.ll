; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_cgx.c_cgx_lmac_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_cgx.c_cgx_lmac_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgx = type { i32, i32, %struct.lmac**, i32* }
%struct.lmac = type { %struct.lmac* }

@CGX_LMAC_FWI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgx*)* @cgx_lmac_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgx_lmac_exit(%struct.cgx* %0) #0 {
  %2 = alloca %struct.cgx*, align 8
  %3 = alloca %struct.lmac*, align 8
  %4 = alloca i32, align 4
  store %struct.cgx* %0, %struct.cgx** %2, align 8
  %5 = load %struct.cgx*, %struct.cgx** %2, align 8
  %6 = getelementptr inbounds %struct.cgx, %struct.cgx* %5, i32 0, i32 3
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load %struct.cgx*, %struct.cgx** %2, align 8
  %11 = getelementptr inbounds %struct.cgx, %struct.cgx* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @flush_workqueue(i32* %12)
  %14 = load %struct.cgx*, %struct.cgx** %2, align 8
  %15 = getelementptr inbounds %struct.cgx, %struct.cgx* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @destroy_workqueue(i32* %16)
  %18 = load %struct.cgx*, %struct.cgx** %2, align 8
  %19 = getelementptr inbounds %struct.cgx, %struct.cgx* %18, i32 0, i32 3
  store i32* null, i32** %19, align 8
  br label %20

20:                                               ; preds = %9, %1
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %56, %20
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.cgx*, %struct.cgx** %2, align 8
  %24 = getelementptr inbounds %struct.cgx, %struct.cgx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %59

27:                                               ; preds = %21
  %28 = load %struct.cgx*, %struct.cgx** %2, align 8
  %29 = getelementptr inbounds %struct.cgx, %struct.cgx* %28, i32 0, i32 2
  %30 = load %struct.lmac**, %struct.lmac*** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.lmac*, %struct.lmac** %30, i64 %32
  %34 = load %struct.lmac*, %struct.lmac** %33, align 8
  store %struct.lmac* %34, %struct.lmac** %3, align 8
  %35 = load %struct.lmac*, %struct.lmac** %3, align 8
  %36 = icmp ne %struct.lmac* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %27
  br label %56

38:                                               ; preds = %27
  %39 = load %struct.cgx*, %struct.cgx** %2, align 8
  %40 = getelementptr inbounds %struct.cgx, %struct.cgx* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* @CGX_LMAC_FWI, align 8
  %43 = load i32, i32* %4, align 4
  %44 = mul nsw i32 %43, 9
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %42, %45
  %47 = call i32 @pci_irq_vector(i32 %41, i64 %46)
  %48 = load %struct.lmac*, %struct.lmac** %3, align 8
  %49 = call i32 @free_irq(i32 %47, %struct.lmac* %48)
  %50 = load %struct.lmac*, %struct.lmac** %3, align 8
  %51 = getelementptr inbounds %struct.lmac, %struct.lmac* %50, i32 0, i32 0
  %52 = load %struct.lmac*, %struct.lmac** %51, align 8
  %53 = call i32 @kfree(%struct.lmac* %52)
  %54 = load %struct.lmac*, %struct.lmac** %3, align 8
  %55 = call i32 @kfree(%struct.lmac* %54)
  br label %56

56:                                               ; preds = %38, %37
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %21

59:                                               ; preds = %21
  ret i32 0
}

declare dso_local i32 @flush_workqueue(i32*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.lmac*) #1

declare dso_local i32 @pci_irq_vector(i32, i64) #1

declare dso_local i32 @kfree(%struct.lmac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
