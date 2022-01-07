; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_send_msg_to_pf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_send_msg_to_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i32, i32, i32, i32, i32 }
%union.nic_mbx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NIC_MBOX_MSG_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"PF NACK to mbox msg 0x%02x from VF%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"PF didn't ACK to mbox msg 0x%02x from VF%d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nicvf_send_msg_to_pf(%struct.nicvf* %0, %union.nic_mbx* %1) #0 {
  %3 = alloca %struct.nicvf*, align 8
  %4 = alloca %union.nic_mbx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nicvf* %0, %struct.nicvf** %3, align 8
  store %union.nic_mbx* %1, %union.nic_mbx** %4, align 8
  %8 = load i32, i32* @NIC_MBOX_MSG_TIMEOUT, align 4
  store i32 %8, i32* %5, align 4
  store i32 10, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %10 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %9, i32 0, i32 2
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %13 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %12, i32 0, i32 0
  store i32 0, i32* %13, align 4
  %14 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %15 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %14, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %17 = load %union.nic_mbx*, %union.nic_mbx** %4, align 8
  %18 = call i32 @nicvf_write_to_mbx(%struct.nicvf* %16, %union.nic_mbx* %17)
  br label %19

19:                                               ; preds = %74, %2
  %20 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %21 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br i1 %24, label %25, label %75

25:                                               ; preds = %19
  %26 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %27 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %32 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %union.nic_mbx*, %union.nic_mbx** %4, align 8
  %35 = bitcast %union.nic_mbx* %34 to %struct.TYPE_2__*
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 255
  %39 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %40 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @netdev_err(i32 %33, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  br label %75

45:                                               ; preds = %25
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @msleep(i32 %46)
  %48 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %49 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %75

53:                                               ; preds = %45
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %5, align 4
  %56 = sub nsw i32 %55, %54
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %74, label %59

59:                                               ; preds = %53
  %60 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %61 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load %union.nic_mbx*, %union.nic_mbx** %4, align 8
  %64 = bitcast %union.nic_mbx* %63 to %struct.TYPE_2__*
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 255
  %68 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %69 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @netdev_err(i32 %62, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %70)
  %72 = load i32, i32* @EBUSY, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %7, align 4
  br label %75

74:                                               ; preds = %53
  br label %19

75:                                               ; preds = %59, %52, %30, %19
  %76 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %77 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %76, i32 0, i32 2
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nicvf_write_to_mbx(%struct.nicvf*, %union.nic_mbx*) #1

declare dso_local i32 @netdev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
