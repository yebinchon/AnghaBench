; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_afvf_flr_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_afvf_flr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvu*, i32)* @rvu_afvf_flr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rvu_afvf_flr_handler(%struct.rvu* %0, i32 %1) #0 {
  %3 = alloca %struct.rvu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.rvu*, %struct.rvu** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = add nsw i32 %7, 1
  %9 = call i32 @__rvu_flr_handler(%struct.rvu* %6, i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = icmp sge i32 %10, 64
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  store i32 1, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = sub nsw i32 %13, 64
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %12, %2
  %16 = load %struct.rvu*, %struct.rvu** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @RVU_PF_VFTRPENDX(i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @BIT_ULL(i32 %19)
  %21 = call i32 @rvupf_write64(%struct.rvu* %16, i32 %18, i32 %20)
  %22 = load %struct.rvu*, %struct.rvu** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @RVU_PF_VFFLR_INT_ENA_W1SX(i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @BIT_ULL(i32 %25)
  %27 = call i32 @rvupf_write64(%struct.rvu* %22, i32 %24, i32 %26)
  ret void
}

declare dso_local i32 @__rvu_flr_handler(%struct.rvu*, i32) #1

declare dso_local i32 @rvupf_write64(%struct.rvu*, i32, i32) #1

declare dso_local i32 @RVU_PF_VFTRPENDX(i32) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @RVU_PF_VFFLR_INT_ENA_W1SX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
