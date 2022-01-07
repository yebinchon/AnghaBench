; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_delete_invalid_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_delete_invalid_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i32, i32, i32, i32, i64, i32 }
%struct.i40e_fdir_filter = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_pf*, %struct.i40e_fdir_filter*)* @i40e_delete_invalid_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_delete_invalid_filter(%struct.i40e_pf* %0, %struct.i40e_fdir_filter* %1) #0 {
  %3 = alloca %struct.i40e_pf*, align 8
  %4 = alloca %struct.i40e_fdir_filter*, align 8
  store %struct.i40e_pf* %0, %struct.i40e_pf** %3, align 8
  store %struct.i40e_fdir_filter* %1, %struct.i40e_fdir_filter** %4, align 8
  %5 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %6 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 8
  %8 = add nsw i32 %7, -1
  store i32 %8, i32* %6, align 8
  %9 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %10 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %9, i32 0, i32 4
  store i64 0, i64* %10, align 8
  %11 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %4, align 8
  %12 = getelementptr inbounds %struct.i40e_fdir_filter, %struct.i40e_fdir_filter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %54 [
    i32 129, label %14
    i32 128, label %19
    i32 130, label %24
    i32 131, label %29
  ]

14:                                               ; preds = %2
  %15 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %16 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %16, align 4
  br label %54

19:                                               ; preds = %2
  %20 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %21 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %21, align 8
  br label %54

24:                                               ; preds = %2
  %25 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %26 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %26, align 4
  br label %54

29:                                               ; preds = %2
  %30 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %4, align 8
  %31 = getelementptr inbounds %struct.i40e_fdir_filter, %struct.i40e_fdir_filter* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %53 [
    i32 133, label %33
    i32 132, label %38
    i32 134, label %43
    i32 135, label %48
  ]

33:                                               ; preds = %29
  %34 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %35 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %35, align 4
  br label %53

38:                                               ; preds = %29
  %39 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %40 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %40, align 8
  br label %53

43:                                               ; preds = %29
  %44 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %45 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %45, align 4
  br label %53

48:                                               ; preds = %29
  %49 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %50 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %29, %48, %43, %38, %33
  br label %54

54:                                               ; preds = %2, %53, %24, %19, %14
  %55 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %4, align 8
  %56 = getelementptr inbounds %struct.i40e_fdir_filter, %struct.i40e_fdir_filter* %55, i32 0, i32 1
  %57 = call i32 @hlist_del(i32* %56)
  %58 = load %struct.i40e_fdir_filter*, %struct.i40e_fdir_filter** %4, align 8
  %59 = call i32 @kfree(%struct.i40e_fdir_filter* %58)
  ret void
}

declare dso_local i32 @hlist_del(i32*) #1

declare dso_local i32 @kfree(%struct.i40e_fdir_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
