; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_control.c_i2400m_report_tlv_media_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_control.c_i2400m_report_tlv_media_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { %struct.wimax_dev }
%struct.wimax_dev = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.i2400m_tlv_media_status = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"(i2400m %p ms %p [%u])\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"HW BUG? unknown media status %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"(i2400m %p ms %p [%u]) = void\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2400m*, %struct.i2400m_tlv_media_status*)* @i2400m_report_tlv_media_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2400m_report_tlv_media_status(%struct.i2400m* %0, %struct.i2400m_tlv_media_status* %1) #0 {
  %3 = alloca %struct.i2400m*, align 8
  %4 = alloca %struct.i2400m_tlv_media_status*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.wimax_dev*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  store %struct.i2400m* %0, %struct.i2400m** %3, align 8
  store %struct.i2400m_tlv_media_status* %1, %struct.i2400m_tlv_media_status** %4, align 8
  %9 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %10 = call %struct.device* @i2400m_dev(%struct.i2400m* %9)
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %12 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %11, i32 0, i32 0
  store %struct.wimax_dev* %12, %struct.wimax_dev** %6, align 8
  %13 = load %struct.wimax_dev*, %struct.wimax_dev** %6, align 8
  %14 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %13, i32 0, i32 0
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %7, align 8
  %16 = load %struct.i2400m_tlv_media_status*, %struct.i2400m_tlv_media_status** %4, align 8
  %17 = getelementptr inbounds %struct.i2400m_tlv_media_status, %struct.i2400m_tlv_media_status* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le32_to_cpu(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %22 = load %struct.i2400m_tlv_media_status*, %struct.i2400m_tlv_media_status** %4, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @d_fnstart(i32 3, %struct.device* %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.i2400m* %21, %struct.i2400m_tlv_media_status* %22, i32 %23)
  %25 = load i32, i32* %8, align 4
  switch i32 %25, label %35 [
    i32 128, label %26
    i32 130, label %29
    i32 129, label %32
  ]

26:                                               ; preds = %2
  %27 = load %struct.net_device*, %struct.net_device** %7, align 8
  %28 = call i32 @netif_carrier_on(%struct.net_device* %27)
  br label %39

29:                                               ; preds = %2
  %30 = load %struct.net_device*, %struct.net_device** %7, align 8
  %31 = call i32 @netif_carrier_off(%struct.net_device* %30)
  br label %39

32:                                               ; preds = %2
  %33 = load %struct.net_device*, %struct.net_device** %7, align 8
  %34 = call i32 @netif_carrier_on(%struct.net_device* %33)
  br label %39

35:                                               ; preds = %2
  %36 = load %struct.device*, %struct.device** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %35, %32, %29, %26
  %40 = load %struct.device*, %struct.device** %5, align 8
  %41 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %42 = load %struct.i2400m_tlv_media_status*, %struct.i2400m_tlv_media_status** %4, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @d_fnend(i32 3, %struct.device* %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), %struct.i2400m* %41, %struct.i2400m_tlv_media_status* %42, i32 %43)
  ret void
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400m*, %struct.i2400m_tlv_media_status*, i32) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400m*, %struct.i2400m_tlv_media_status*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
