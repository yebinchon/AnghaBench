; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_main.c_ath6kl_add_new_sta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_main.c_ath6kl_add_new_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_vif = type { i32, %struct.ath6kl* }
%struct.ath6kl = type { i32, %struct.TYPE_4__, %struct.ath6kl_sta* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ath6kl_sta = type { i64, i64, i64, i64, i32, i8*, i32, i32 }

@ETH_ALEN = common dso_local global i64 0, align 8
@ATH6KL_MAX_IE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath6kl_vif*, i64*, i8*, i64*, i64, i64, i64, i64, i64)* @ath6kl_add_new_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath6kl_add_new_sta(%struct.ath6kl_vif* %0, i64* %1, i8* %2, i64* %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8) #0 {
  %10 = alloca %struct.ath6kl_vif*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.ath6kl*, align 8
  %20 = alloca %struct.ath6kl_sta*, align 8
  %21 = alloca i64, align 8
  store %struct.ath6kl_vif* %0, %struct.ath6kl_vif** %10, align 8
  store i64* %1, i64** %11, align 8
  store i8* %2, i8** %12, align 8
  store i64* %3, i64** %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i64 %7, i64* %17, align 8
  store i64 %8, i64* %18, align 8
  %22 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %10, align 8
  %23 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %22, i32 0, i32 1
  %24 = load %struct.ath6kl*, %struct.ath6kl** %23, align 8
  store %struct.ath6kl* %24, %struct.ath6kl** %19, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = getelementptr i8, i8* %25, i64 -1
  %27 = ptrtoint i8* %26 to i64
  store i64 %27, i64* %21, align 8
  %28 = load %struct.ath6kl*, %struct.ath6kl** %19, align 8
  %29 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %28, i32 0, i32 2
  %30 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %29, align 8
  %31 = load i64, i64* %21, align 8
  %32 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %30, i64 %31
  store %struct.ath6kl_sta* %32, %struct.ath6kl_sta** %20, align 8
  %33 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %20, align 8
  %34 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = load i64*, i64** %11, align 8
  %37 = load i64, i64* @ETH_ALEN, align 8
  %38 = call i32 @memcpy(i32 %35, i64* %36, i64 %37)
  %39 = load i64, i64* %14, align 8
  %40 = load i64, i64* @ATH6KL_MAX_IE, align 8
  %41 = icmp ule i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %9
  %43 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %20, align 8
  %44 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = load i64*, i64** %13, align 8
  %47 = load i64, i64* %14, align 8
  %48 = call i32 @memcpy(i32 %45, i64* %46, i64 %47)
  br label %49

49:                                               ; preds = %42, %9
  %50 = load i8*, i8** %12, align 8
  %51 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %20, align 8
  %52 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %51, i32 0, i32 5
  store i8* %50, i8** %52, align 8
  %53 = load i64, i64* %15, align 8
  %54 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %20, align 8
  %55 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load i64, i64* %16, align 8
  %57 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %20, align 8
  %58 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load i64, i64* %17, align 8
  %60 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %20, align 8
  %61 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %60, i32 0, i32 2
  store i64 %59, i64* %61, align 8
  %62 = load i64, i64* %18, align 8
  %63 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %20, align 8
  %64 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %63, i32 0, i32 3
  store i64 %62, i64* %64, align 8
  %65 = load %struct.ath6kl*, %struct.ath6kl** %19, align 8
  %66 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i64, i64* %21, align 8
  %69 = trunc i64 %68 to i32
  %70 = shl i32 1, %69
  %71 = or i32 %67, %70
  %72 = load %struct.ath6kl*, %struct.ath6kl** %19, align 8
  %73 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = call i32 @cpu_to_le32(i8* %74)
  %76 = load %struct.ath6kl*, %struct.ath6kl** %19, align 8
  %77 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = load i64, i64* %21, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  store i32 %75, i32* %82, align 4
  %83 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %10, align 8
  %84 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %10, align 8
  %85 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %20, align 8
  %88 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @aggr_conn_init(%struct.ath6kl_vif* %83, i32 %86, i32 %89)
  ret void
}

declare dso_local i32 @memcpy(i32, i64*, i64) #1

declare dso_local i32 @cpu_to_le32(i8*) #1

declare dso_local i32 @aggr_conn_init(%struct.ath6kl_vif*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
