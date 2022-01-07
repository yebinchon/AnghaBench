; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_do_s2io_delete_unicast_mc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_do_s2io_delete_unicast_mc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2io_nic = type { %struct.config_param }
%struct.config_param = type { i32 }

@S2IO_DISABLE_MAC_ENTRY = common dso_local global i64 0, align 8
@FAILURE = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i32 0, align 4
@ERR_DBG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"MAC address 0x%llx not found in CAM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s2io_nic*, i64)* @do_s2io_delete_unicast_mc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_s2io_delete_unicast_mc(%struct.s2io_nic* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s2io_nic*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.config_param*, align 8
  store %struct.s2io_nic* %0, %struct.s2io_nic** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* @S2IO_DISABLE_MAC_ENTRY, align 8
  store i64 %10, i64* %7, align 8
  %11 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %12 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %11, i32 0, i32 0
  store %struct.config_param* %12, %struct.config_param** %9, align 8
  store i32 1, i32* %6, align 4
  br label %13

13:                                               ; preds = %41, %2
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.config_param*, %struct.config_param** %9, align 8
  %16 = getelementptr inbounds %struct.config_param, %struct.config_param* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %13
  %20 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @do_s2io_read_unicast_mc(%struct.s2io_nic* %20, i32 %21)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %19
  %27 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @do_s2io_add_mac(%struct.s2io_nic* %27, i64 %28, i32 %29)
  %31 = load i64, i64* @FAILURE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i64, i64* @FAILURE, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %50

36:                                               ; preds = %26
  %37 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %38 = call i32 @do_s2io_store_unicast_mc(%struct.s2io_nic* %37)
  %39 = load i32, i32* @SUCCESS, align 4
  store i32 %39, i32* %3, align 4
  br label %50

40:                                               ; preds = %19
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %13

44:                                               ; preds = %13
  %45 = load i32, i32* @ERR_DBG, align 4
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @DBG_PRINT(i32 %45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %46)
  %48 = load i64, i64* @FAILURE, align 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %44, %36, %33
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @do_s2io_read_unicast_mc(%struct.s2io_nic*, i32) #1

declare dso_local i64 @do_s2io_add_mac(%struct.s2io_nic*, i64, i32) #1

declare dso_local i32 @do_s2io_store_unicast_mc(%struct.s2io_nic*) #1

declare dso_local i32 @DBG_PRINT(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
