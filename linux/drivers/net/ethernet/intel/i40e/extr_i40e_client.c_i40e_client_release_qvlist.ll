; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_client.c_i40e_client_release_qvlist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_client.c_i40e_client_release_qvlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_info = type { %struct.i40e_qvlist_info*, %struct.i40e_pf* }
%struct.i40e_qvlist_info = type { i64, %struct.i40e_qv_info* }
%struct.i40e_qv_info = type { i64 }
%struct.i40e_pf = type { i32 }

@I40E_PFINT_LNKLSTN_FIRSTQ_INDX_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_info*)* @i40e_client_release_qvlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_client_release_qvlist(%struct.i40e_info* %0) #0 {
  %2 = alloca %struct.i40e_info*, align 8
  %3 = alloca %struct.i40e_qvlist_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.i40e_pf*, align 8
  %6 = alloca %struct.i40e_qv_info*, align 8
  %7 = alloca i64, align 8
  store %struct.i40e_info* %0, %struct.i40e_info** %2, align 8
  %8 = load %struct.i40e_info*, %struct.i40e_info** %2, align 8
  %9 = getelementptr inbounds %struct.i40e_info, %struct.i40e_info* %8, i32 0, i32 0
  %10 = load %struct.i40e_qvlist_info*, %struct.i40e_qvlist_info** %9, align 8
  store %struct.i40e_qvlist_info* %10, %struct.i40e_qvlist_info** %3, align 8
  %11 = load %struct.i40e_info*, %struct.i40e_info** %2, align 8
  %12 = getelementptr inbounds %struct.i40e_info, %struct.i40e_info* %11, i32 0, i32 0
  %13 = load %struct.i40e_qvlist_info*, %struct.i40e_qvlist_info** %12, align 8
  %14 = icmp ne %struct.i40e_qvlist_info* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %56

16:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %17

17:                                               ; preds = %46, %16
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.i40e_qvlist_info*, %struct.i40e_qvlist_info** %3, align 8
  %20 = getelementptr inbounds %struct.i40e_qvlist_info, %struct.i40e_qvlist_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %18, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %17
  %24 = load %struct.i40e_info*, %struct.i40e_info** %2, align 8
  %25 = getelementptr inbounds %struct.i40e_info, %struct.i40e_info* %24, i32 0, i32 1
  %26 = load %struct.i40e_pf*, %struct.i40e_pf** %25, align 8
  store %struct.i40e_pf* %26, %struct.i40e_pf** %5, align 8
  %27 = load %struct.i40e_qvlist_info*, %struct.i40e_qvlist_info** %3, align 8
  %28 = getelementptr inbounds %struct.i40e_qvlist_info, %struct.i40e_qvlist_info* %27, i32 0, i32 1
  %29 = load %struct.i40e_qv_info*, %struct.i40e_qv_info** %28, align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds %struct.i40e_qv_info, %struct.i40e_qv_info* %29, i64 %30
  store %struct.i40e_qv_info* %31, %struct.i40e_qv_info** %6, align 8
  %32 = load %struct.i40e_qv_info*, %struct.i40e_qv_info** %6, align 8
  %33 = icmp ne %struct.i40e_qv_info* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %23
  br label %46

35:                                               ; preds = %23
  %36 = load %struct.i40e_qv_info*, %struct.i40e_qv_info** %6, align 8
  %37 = getelementptr inbounds %struct.i40e_qv_info, %struct.i40e_qv_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %38, 1
  %40 = call i64 @I40E_PFINT_LNKLSTN(i64 %39)
  store i64 %40, i64* %7, align 8
  %41 = load %struct.i40e_pf*, %struct.i40e_pf** %5, align 8
  %42 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %41, i32 0, i32 0
  %43 = load i64, i64* %7, align 8
  %44 = load i32, i32* @I40E_PFINT_LNKLSTN_FIRSTQ_INDX_MASK, align 4
  %45 = call i32 @wr32(i32* %42, i64 %43, i32 %44)
  br label %46

46:                                               ; preds = %35, %34
  %47 = load i64, i64* %4, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %4, align 8
  br label %17

49:                                               ; preds = %17
  %50 = load %struct.i40e_info*, %struct.i40e_info** %2, align 8
  %51 = getelementptr inbounds %struct.i40e_info, %struct.i40e_info* %50, i32 0, i32 0
  %52 = load %struct.i40e_qvlist_info*, %struct.i40e_qvlist_info** %51, align 8
  %53 = call i32 @kfree(%struct.i40e_qvlist_info* %52)
  %54 = load %struct.i40e_info*, %struct.i40e_info** %2, align 8
  %55 = getelementptr inbounds %struct.i40e_info, %struct.i40e_info* %54, i32 0, i32 0
  store %struct.i40e_qvlist_info* null, %struct.i40e_qvlist_info** %55, align 8
  br label %56

56:                                               ; preds = %49, %15
  ret void
}

declare dso_local i64 @I40E_PFINT_LNKLSTN(i64) #1

declare dso_local i32 @wr32(i32*, i64, i32) #1

declare dso_local i32 @kfree(%struct.i40e_qvlist_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
