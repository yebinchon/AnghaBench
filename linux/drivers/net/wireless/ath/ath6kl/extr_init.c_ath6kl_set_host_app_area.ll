; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_init.c_ath6kl_set_host_app_area.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_init.c_ath6kl_set_host_app_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i32 }
%struct.host_app_area = type { i32 }

@hi_app_host_interest = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@WMI_PROTOCOL_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl*)* @ath6kl_set_host_app_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_set_host_app_area(%struct.ath6kl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath6kl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.host_app_area, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %3, align 8
  %7 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %8 = load i32, i32* @hi_app_host_interest, align 4
  %9 = call i32 @HI_ITEM(i32 %8)
  %10 = call i32 @ath6kl_get_hi_item_addr(%struct.ath6kl* %7, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %12 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @TARG_VTOP(i32 %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @ath6kl_diag_read32(%struct.ath6kl* %16, i32 %17, i32* %5)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %41

23:                                               ; preds = %1
  %24 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %25 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @TARG_VTOP(i32 %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @WMI_PROTOCOL_VERSION, align 4
  %30 = call i32 @cpu_to_le32(i32 %29)
  %31 = getelementptr inbounds %struct.host_app_area, %struct.host_app_area* %6, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = bitcast %struct.host_app_area* %6 to i32*
  %35 = call i64 @ath6kl_diag_write(%struct.ath6kl* %32, i32 %33, i32* %34, i32 4)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %23
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %41

40:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %37, %20
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @ath6kl_get_hi_item_addr(%struct.ath6kl*, i32) #1

declare dso_local i32 @HI_ITEM(i32) #1

declare dso_local i32 @TARG_VTOP(i32, i32) #1

declare dso_local i64 @ath6kl_diag_read32(%struct.ath6kl*, i32, i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @ath6kl_diag_write(%struct.ath6kl*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
