; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_clear_interrupt_scheme.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_clear_interrupt_scheme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i32, i64*, i32, i32 }

@I40E_IWARP_IRQ_PILE_ID = common dso_local global i64 0, align 8
@I40E_PILE_VALID_BIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_pf*)* @i40e_clear_interrupt_scheme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_clear_interrupt_scheme(%struct.i40e_pf* %0) #0 {
  %2 = alloca %struct.i40e_pf*, align 8
  %3 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %2, align 8
  %4 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %5 = call i32 @i40e_free_misc_vector(%struct.i40e_pf* %4)
  %6 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %7 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %10 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load i64, i64* @I40E_IWARP_IRQ_PILE_ID, align 8
  %13 = call i32 @i40e_put_lump(i32 %8, i32 %11, i64 %12)
  %14 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %15 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i64, i64* @I40E_PILE_VALID_BIT, align 8
  %18 = sub nsw i64 %17, 1
  %19 = call i32 @i40e_put_lump(i32 %16, i32 0, i64 %18)
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %45, %1
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %23 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %48

26:                                               ; preds = %20
  %27 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %28 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %26
  %36 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %37 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @i40e_vsi_free_q_vectors(i64 %42)
  br label %44

44:                                               ; preds = %35, %26
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %20

48:                                               ; preds = %20
  %49 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %50 = call i32 @i40e_reset_interrupt_capability(%struct.i40e_pf* %49)
  ret void
}

declare dso_local i32 @i40e_free_misc_vector(%struct.i40e_pf*) #1

declare dso_local i32 @i40e_put_lump(i32, i32, i64) #1

declare dso_local i32 @i40e_vsi_free_q_vectors(i64) #1

declare dso_local i32 @i40e_reset_interrupt_capability(%struct.i40e_pf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
