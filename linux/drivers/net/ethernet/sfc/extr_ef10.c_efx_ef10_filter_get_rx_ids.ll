; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_filter_get_rx_ids.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_filter_get_rx_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.efx_ef10_filter_table* }
%struct.efx_ef10_filter_table = type { i32 }
%struct.efx_filter_spec = type { i32 }

@HUNT_FILTER_TBL_ROWS = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, i32, i32*, i32)* @efx_ef10_filter_get_rx_ids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ef10_filter_get_rx_ids(%struct.efx_nic* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.efx_ef10_filter_table*, align 8
  %10 = alloca %struct.efx_filter_spec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %14 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %13, i32 0, i32 0
  %15 = call i32 @down_read(i32* %14)
  %16 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %17 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %16, i32 0, i32 1
  %18 = load %struct.efx_ef10_filter_table*, %struct.efx_ef10_filter_table** %17, align 8
  store %struct.efx_ef10_filter_table* %18, %struct.efx_ef10_filter_table** %9, align 8
  %19 = load %struct.efx_ef10_filter_table*, %struct.efx_ef10_filter_table** %9, align 8
  %20 = getelementptr inbounds %struct.efx_ef10_filter_table, %struct.efx_ef10_filter_table* %19, i32 0, i32 0
  %21 = call i32 @down_read(i32* %20)
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %57, %4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @HUNT_FILTER_TBL_ROWS, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %60

26:                                               ; preds = %22
  %27 = load %struct.efx_ef10_filter_table*, %struct.efx_ef10_filter_table** %9, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call %struct.efx_filter_spec* @efx_ef10_filter_entry_spec(%struct.efx_ef10_filter_table* %27, i32 %28)
  store %struct.efx_filter_spec* %29, %struct.efx_filter_spec** %10, align 8
  %30 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %10, align 8
  %31 = icmp ne %struct.efx_filter_spec* %30, null
  br i1 %31, label %32, label %56

32:                                               ; preds = %26
  %33 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %10, align 8
  %34 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %56

38:                                               ; preds = %32
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @EMSGSIZE, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %12, align 4
  br label %60

45:                                               ; preds = %38
  %46 = load %struct.efx_ef10_filter_table*, %struct.efx_ef10_filter_table** %9, align 8
  %47 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %10, align 8
  %48 = call i32 @efx_ef10_filter_pri(%struct.efx_ef10_filter_table* %46, %struct.efx_filter_spec* %47)
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @efx_ef10_make_filter_id(i32 %48, i32 %49)
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %12, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  store i32 %50, i32* %55, align 4
  br label %56

56:                                               ; preds = %45, %32, %26
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %11, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %11, align 4
  br label %22

60:                                               ; preds = %42, %22
  %61 = load %struct.efx_ef10_filter_table*, %struct.efx_ef10_filter_table** %9, align 8
  %62 = getelementptr inbounds %struct.efx_ef10_filter_table, %struct.efx_ef10_filter_table* %61, i32 0, i32 0
  %63 = call i32 @up_read(i32* %62)
  %64 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %65 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %64, i32 0, i32 0
  %66 = call i32 @up_read(i32* %65)
  %67 = load i32, i32* %12, align 4
  ret i32 %67
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.efx_filter_spec* @efx_ef10_filter_entry_spec(%struct.efx_ef10_filter_table*, i32) #1

declare dso_local i32 @efx_ef10_make_filter_id(i32, i32) #1

declare dso_local i32 @efx_ef10_filter_pri(%struct.efx_ef10_filter_table*, %struct.efx_filter_spec*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
