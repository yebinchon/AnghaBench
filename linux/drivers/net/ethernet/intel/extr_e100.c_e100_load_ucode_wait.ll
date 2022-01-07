; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_e100_load_ucode_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_e100_load_ucode_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nic = type { i32, %struct.TYPE_4__*, i32, %struct.cb* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.cb = type { i32 }
%struct.firmware = type { i32 }

@e100_setup_ucode = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"ucode cmd failed with error %d\0A\00", align 1
@cuc_start = common dso_local global i32 0, align 4
@cb_complete = common dso_local global i32 0, align 4
@cb_ok = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"ucode load failed\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nic*)* @e100_load_ucode_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e100_load_ucode_wait(%struct.nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nic*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cb*, align 8
  store %struct.nic* %0, %struct.nic** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 50, i32* %6, align 4
  %8 = load %struct.nic*, %struct.nic** %3, align 8
  %9 = getelementptr inbounds %struct.nic, %struct.nic* %8, i32 0, i32 3
  %10 = load %struct.cb*, %struct.cb** %9, align 8
  store %struct.cb* %10, %struct.cb** %7, align 8
  %11 = load %struct.nic*, %struct.nic** %3, align 8
  %12 = call %struct.firmware* @e100_request_firmware(%struct.nic* %11)
  store %struct.firmware* %12, %struct.firmware** %4, align 8
  %13 = load %struct.firmware*, %struct.firmware** %4, align 8
  %14 = call i64 @IS_ERR_OR_NULL(%struct.firmware* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.firmware*, %struct.firmware** %4, align 8
  %18 = call i32 @PTR_ERR_OR_ZERO(%struct.firmware* %17)
  store i32 %18, i32* %2, align 4
  br label %85

19:                                               ; preds = %1
  %20 = load %struct.nic*, %struct.nic** %3, align 8
  %21 = load %struct.firmware*, %struct.firmware** %4, align 8
  %22 = bitcast %struct.firmware* %21 to i8*
  %23 = load i32, i32* @e100_setup_ucode, align 4
  %24 = call i32 @e100_exec_cb(%struct.nic* %20, i8* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %19
  %27 = load %struct.nic*, %struct.nic** %3, align 8
  %28 = load i32, i32* @probe, align 4
  %29 = load %struct.nic*, %struct.nic** %3, align 8
  %30 = getelementptr inbounds %struct.nic, %struct.nic* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 (%struct.nic*, i32, i32, i8*, ...) @netif_err(%struct.nic* %27, i32 %28, i32 %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %26, %19
  %35 = load i32, i32* @cuc_start, align 4
  %36 = load %struct.nic*, %struct.nic** %3, align 8
  %37 = getelementptr inbounds %struct.nic, %struct.nic* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.nic*, %struct.nic** %3, align 8
  %39 = call i32 @e100_write_flush(%struct.nic* %38)
  %40 = call i32 @udelay(i32 10)
  br label %41

41:                                               ; preds = %56, %34
  %42 = load %struct.cb*, %struct.cb** %7, align 8
  %43 = getelementptr inbounds %struct.cb, %struct.cb* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @cb_complete, align 4
  %46 = call i32 @cpu_to_le16(i32 %45)
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  br i1 %49, label %50, label %57

50:                                               ; preds = %41
  %51 = call i32 @msleep(i32 10)
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  br label %57

56:                                               ; preds = %50
  br label %41

57:                                               ; preds = %55, %41
  %58 = load %struct.nic*, %struct.nic** %3, align 8
  %59 = getelementptr inbounds %struct.nic, %struct.nic* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = call i32 @iowrite8(i32 -1, i32* %62)
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %57
  %67 = load %struct.cb*, %struct.cb** %7, align 8
  %68 = getelementptr inbounds %struct.cb, %struct.cb* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @cb_ok, align 4
  %71 = call i32 @cpu_to_le16(i32 %70)
  %72 = and i32 %69, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %66, %57
  %75 = load %struct.nic*, %struct.nic** %3, align 8
  %76 = load i32, i32* @probe, align 4
  %77 = load %struct.nic*, %struct.nic** %3, align 8
  %78 = getelementptr inbounds %struct.nic, %struct.nic* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 (%struct.nic*, i32, i32, i8*, ...) @netif_err(%struct.nic* %75, i32 %76, i32 %79, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* @EPERM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %74, %66
  %84 = load i32, i32* %5, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %83, %16
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.firmware* @e100_request_firmware(%struct.nic*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.firmware*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.firmware*) #1

declare dso_local i32 @e100_exec_cb(%struct.nic*, i8*, i32) #1

declare dso_local i32 @netif_err(%struct.nic*, i32, i32, i8*, ...) #1

declare dso_local i32 @e100_write_flush(%struct.nic*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @iowrite8(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
