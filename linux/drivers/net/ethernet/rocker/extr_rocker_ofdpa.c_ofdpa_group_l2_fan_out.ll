; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_group_l2_fan_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_group_l2_fan_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofdpa_port = type { i32 }
%struct.ofdpa_group_tbl_entry = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ofdpa_port*, i32, i32, i32*, i32)* @ofdpa_group_l2_fan_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofdpa_group_l2_fan_out(%struct.ofdpa_port* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ofdpa_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ofdpa_group_tbl_entry*, align 8
  store %struct.ofdpa_port* %0, %struct.ofdpa_port** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.ofdpa_group_tbl_entry* @kzalloc(i32 12, i32 %13)
  store %struct.ofdpa_group_tbl_entry* %14, %struct.ofdpa_group_tbl_entry** %12, align 8
  %15 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %12, align 8
  %16 = icmp ne %struct.ofdpa_group_tbl_entry* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %55

20:                                               ; preds = %5
  %21 = load i32, i32* %11, align 4
  %22 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %12, align 8
  %23 = getelementptr inbounds %struct.ofdpa_group_tbl_entry, %struct.ofdpa_group_tbl_entry* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %12, align 8
  %26 = getelementptr inbounds %struct.ofdpa_group_tbl_entry, %struct.ofdpa_group_tbl_entry* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i32 @kcalloc(i32 %27, i32 4, i32 %28)
  %30 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %12, align 8
  %31 = getelementptr inbounds %struct.ofdpa_group_tbl_entry, %struct.ofdpa_group_tbl_entry* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %12, align 8
  %33 = getelementptr inbounds %struct.ofdpa_group_tbl_entry, %struct.ofdpa_group_tbl_entry* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %20
  %37 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %12, align 8
  %38 = call i32 @kfree(%struct.ofdpa_group_tbl_entry* %37)
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %55

41:                                               ; preds = %20
  %42 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %12, align 8
  %43 = getelementptr inbounds %struct.ofdpa_group_tbl_entry, %struct.ofdpa_group_tbl_entry* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 4
  %49 = trunc i64 %48 to i32
  %50 = call i32 @memcpy(i32 %44, i32* %45, i32 %49)
  %51 = load %struct.ofdpa_port*, %struct.ofdpa_port** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %12, align 8
  %54 = call i32 @ofdpa_group_tbl_do(%struct.ofdpa_port* %51, i32 %52, %struct.ofdpa_group_tbl_entry* %53)
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %41, %36, %17
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local %struct.ofdpa_group_tbl_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.ofdpa_group_tbl_entry*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @ofdpa_group_tbl_do(%struct.ofdpa_port*, i32, %struct.ofdpa_group_tbl_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
