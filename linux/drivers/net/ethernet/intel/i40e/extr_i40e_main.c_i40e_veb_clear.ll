; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_veb_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_veb_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_veb = type { i64, %struct.i40e_pf* }
%struct.i40e_pf = type { i32, %struct.i40e_veb** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_veb*)* @i40e_veb_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_veb_clear(%struct.i40e_veb* %0) #0 {
  %2 = alloca %struct.i40e_veb*, align 8
  %3 = alloca %struct.i40e_pf*, align 8
  store %struct.i40e_veb* %0, %struct.i40e_veb** %2, align 8
  %4 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %5 = icmp ne %struct.i40e_veb* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %44

7:                                                ; preds = %1
  %8 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %9 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %8, i32 0, i32 1
  %10 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %11 = icmp ne %struct.i40e_pf* %10, null
  br i1 %11, label %12, label %41

12:                                               ; preds = %7
  %13 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %14 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %13, i32 0, i32 1
  %15 = load %struct.i40e_pf*, %struct.i40e_pf** %14, align 8
  store %struct.i40e_pf* %15, %struct.i40e_pf** %3, align 8
  %16 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %17 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %20 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %19, i32 0, i32 1
  %21 = load %struct.i40e_veb**, %struct.i40e_veb*** %20, align 8
  %22 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %23 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.i40e_veb*, %struct.i40e_veb** %21, i64 %24
  %26 = load %struct.i40e_veb*, %struct.i40e_veb** %25, align 8
  %27 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %28 = icmp eq %struct.i40e_veb* %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %12
  %30 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %31 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %30, i32 0, i32 1
  %32 = load %struct.i40e_veb**, %struct.i40e_veb*** %31, align 8
  %33 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %34 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.i40e_veb*, %struct.i40e_veb** %32, i64 %35
  store %struct.i40e_veb* null, %struct.i40e_veb** %36, align 8
  br label %37

37:                                               ; preds = %29, %12
  %38 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %39 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  br label %41

41:                                               ; preds = %37, %7
  %42 = load %struct.i40e_veb*, %struct.i40e_veb** %2, align 8
  %43 = call i32 @kfree(%struct.i40e_veb* %42)
  br label %44

44:                                               ; preds = %41, %6
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.i40e_veb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
