; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_filter_get_safe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_filter_get_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.efx_ef10_filter_table* }
%struct.efx_ef10_filter_table = type { i32 }
%struct.efx_filter_spec = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, i32, i32, %struct.efx_filter_spec*)* @efx_ef10_filter_get_safe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ef10_filter_get_safe(%struct.efx_nic* %0, i32 %1, i32 %2, %struct.efx_filter_spec* %3) #0 {
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.efx_filter_spec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.efx_filter_spec*, align 8
  %11 = alloca %struct.efx_ef10_filter_table*, align 8
  %12 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.efx_filter_spec* %3, %struct.efx_filter_spec** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @efx_ef10_filter_get_unsafe_id(i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %16 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %15, i32 0, i32 0
  %17 = call i32 @down_read(i32* %16)
  %18 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %19 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %18, i32 0, i32 1
  %20 = load %struct.efx_ef10_filter_table*, %struct.efx_ef10_filter_table** %19, align 8
  store %struct.efx_ef10_filter_table* %20, %struct.efx_ef10_filter_table** %11, align 8
  %21 = load %struct.efx_ef10_filter_table*, %struct.efx_ef10_filter_table** %11, align 8
  %22 = getelementptr inbounds %struct.efx_ef10_filter_table, %struct.efx_ef10_filter_table* %21, i32 0, i32 0
  %23 = call i32 @down_read(i32* %22)
  %24 = load %struct.efx_ef10_filter_table*, %struct.efx_ef10_filter_table** %11, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call %struct.efx_filter_spec* @efx_ef10_filter_entry_spec(%struct.efx_ef10_filter_table* %24, i32 %25)
  store %struct.efx_filter_spec* %26, %struct.efx_filter_spec** %10, align 8
  %27 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %10, align 8
  %28 = icmp ne %struct.efx_filter_spec* %27, null
  br i1 %28, label %29, label %47

29:                                               ; preds = %4
  %30 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %10, align 8
  %31 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %29
  %36 = load %struct.efx_ef10_filter_table*, %struct.efx_ef10_filter_table** %11, align 8
  %37 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %10, align 8
  %38 = call i64 @efx_ef10_filter_pri(%struct.efx_ef10_filter_table* %36, %struct.efx_filter_spec* %37)
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @efx_ef10_filter_get_unsafe_pri(i32 %39)
  %41 = icmp eq i64 %38, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %8, align 8
  %44 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %10, align 8
  %45 = bitcast %struct.efx_filter_spec* %43 to i8*
  %46 = bitcast %struct.efx_filter_spec* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 4, i1 false)
  store i32 0, i32* %12, align 4
  br label %50

47:                                               ; preds = %35, %29, %4
  %48 = load i32, i32* @ENOENT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %47, %42
  %51 = load %struct.efx_ef10_filter_table*, %struct.efx_ef10_filter_table** %11, align 8
  %52 = getelementptr inbounds %struct.efx_ef10_filter_table, %struct.efx_ef10_filter_table* %51, i32 0, i32 0
  %53 = call i32 @up_read(i32* %52)
  %54 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %55 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %54, i32 0, i32 0
  %56 = call i32 @up_read(i32* %55)
  %57 = load i32, i32* %12, align 4
  ret i32 %57
}

declare dso_local i32 @efx_ef10_filter_get_unsafe_id(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.efx_filter_spec* @efx_ef10_filter_entry_spec(%struct.efx_ef10_filter_table*, i32) #1

declare dso_local i64 @efx_ef10_filter_pri(%struct.efx_ef10_filter_table*, %struct.efx_filter_spec*) #1

declare dso_local i64 @efx_ef10_filter_get_unsafe_pri(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
