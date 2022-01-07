; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_rx.c_i2400m_rx_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_rx.c_i2400m_rx_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.device = type { i32 }
%struct.i2400m_l3l4_hdr = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"HW BUG? device sent a bad message: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%s 0x%04x: %zu bytes\0A\00", align 1
@I2400M_MT_REPORT_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"REPORT\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"CMD/SET/GET\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"echo\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"error sending report to userspace: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2400m*, %struct.sk_buff*, i8*, i64)* @i2400m_rx_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2400m_rx_ctl(%struct.i2400m* %0, %struct.sk_buff* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.i2400m*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.i2400m_l3l4_hdr*, align 8
  %12 = alloca i32, align 4
  store %struct.i2400m* %0, %struct.i2400m** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %14 = call %struct.device* @i2400m_dev(%struct.i2400m* %13)
  store %struct.device* %14, %struct.device** %10, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.i2400m_l3l4_hdr*
  store %struct.i2400m_l3l4_hdr* %16, %struct.i2400m_l3l4_hdr** %11, align 8
  %17 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %18 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %11, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @i2400m_msg_size_check(%struct.i2400m* %17, %struct.i2400m_l3l4_hdr* %18, i64 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load %struct.device*, %struct.device** %10, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %88

27:                                               ; preds = %4
  %28 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %11, align 8
  %29 = getelementptr inbounds %struct.i2400m_l3l4_hdr, %struct.i2400m_l3l4_hdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le16_to_cpu(i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load %struct.device*, %struct.device** %10, align 8
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @I2400M_MT_REPORT_MASK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)
  %39 = load i32, i32* %12, align 4
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @d_printf(i32 1, %struct.device* %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %38, i32 %39, i64 %40)
  %42 = load %struct.device*, %struct.device** %10, align 8
  %43 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %11, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @d_dump(i32 2, %struct.device* %42, %struct.i2400m_l3l4_hdr* %43, i64 %44)
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @I2400M_MT_REPORT_MASK, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %82

50:                                               ; preds = %27
  %51 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %11, align 8
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @i2400m_report_hook_queue(%struct.i2400m* %51, %struct.sk_buff* %52, %struct.i2400m_l3l4_hdr* %53, i64 %54)
  %56 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %57 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %50
  %62 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %63 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %62, i32 0, i32 0
  %64 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %11, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call i32 @wimax_msg(i32* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %struct.i2400m_l3l4_hdr* %64, i64 %65, i32 %66)
  br label %68

68:                                               ; preds = %61, %50
  %69 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %70 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %69, i32 0, i32 0
  %71 = load %struct.i2400m_l3l4_hdr*, %struct.i2400m_l3l4_hdr** %11, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = call i32 @wimax_msg(i32* %70, i8* null, %struct.i2400m_l3l4_hdr* %71, i64 %72, i32 %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %68
  %78 = load %struct.device*, %struct.device** %10, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @dev_err(%struct.device* %78, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %77, %68
  br label %87

82:                                               ; preds = %27
  %83 = load %struct.i2400m*, %struct.i2400m** %5, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = load i64, i64* %8, align 8
  %86 = call i32 @i2400m_rx_ctl_ack(%struct.i2400m* %83, i8* %84, i64 %85)
  br label %87

87:                                               ; preds = %82, %81
  br label %88

88:                                               ; preds = %87, %23
  ret void
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @i2400m_msg_size_check(%struct.i2400m*, %struct.i2400m_l3l4_hdr*, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*, i8*, i32, i64) #1

declare dso_local i32 @d_dump(i32, %struct.device*, %struct.i2400m_l3l4_hdr*, i64) #1

declare dso_local i32 @i2400m_report_hook_queue(%struct.i2400m*, %struct.sk_buff*, %struct.i2400m_l3l4_hdr*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wimax_msg(i32*, i8*, %struct.i2400m_l3l4_hdr*, i64, i32) #1

declare dso_local i32 @i2400m_rx_ctl_ack(%struct.i2400m*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
