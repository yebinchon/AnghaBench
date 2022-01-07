; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_smb_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_smb_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { i32 }

@JME_SMBCSR = common dso_local global i32 0, align 4
@JME_SMB_BUSY_TIMEOUT = common dso_local global i32 0, align 4
@SMBCSR_BUSY = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"SMB Bus Busy\0A\00", align 1
@JME_SMBINTF = common dso_local global i32 0, align 4
@SMBINTF_HWADDR_SHIFT = common dso_local global i32 0, align 4
@SMBINTF_HWADDR = common dso_local global i32 0, align 4
@SMBINTF_HWRWN_READ = common dso_local global i32 0, align 4
@SMBINTF_HWCMD = common dso_local global i32 0, align 4
@SMBINTF_HWDATR = common dso_local global i32 0, align 4
@SMBINTF_HWDATR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jme_adapter*, i32)* @jme_smb_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_smb_read(%struct.jme_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.jme_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.jme_adapter* %0, %struct.jme_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %9 = load i32, i32* @JME_SMBCSR, align 4
  %10 = call i32 @jread32(%struct.jme_adapter* %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @JME_SMB_BUSY_TIMEOUT, align 4
  store i32 %11, i32* %7, align 4
  br label %12

12:                                               ; preds = %23, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @SMBCSR_BUSY, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %17, %12
  %22 = phi i1 [ false, %12 ], [ %20, %17 ]
  br i1 %22, label %23, label %28

23:                                               ; preds = %21
  %24 = call i32 @msleep(i32 1)
  %25 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %26 = load i32, i32* @JME_SMBCSR, align 4
  %27 = call i32 @jread32(%struct.jme_adapter* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  br label %12

28:                                               ; preds = %21
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %28
  %32 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %33 = load i32, i32* @hw, align 4
  %34 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %35 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @netif_err(%struct.jme_adapter* %32, i32 %33, i32 %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 255, i32* %3, align 4
  br label %87

38:                                               ; preds = %28
  %39 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %40 = load i32, i32* @JME_SMBINTF, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @SMBINTF_HWADDR_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = load i32, i32* @SMBINTF_HWADDR, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @SMBINTF_HWRWN_READ, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @SMBINTF_HWCMD, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @jwrite32(%struct.jme_adapter* %39, i32 %40, i32 %49)
  %51 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %52 = load i32, i32* @JME_SMBINTF, align 4
  %53 = call i32 @jread32(%struct.jme_adapter* %51, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* @JME_SMB_BUSY_TIMEOUT, align 4
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %66, %38
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @SMBINTF_HWCMD, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br label %64

64:                                               ; preds = %60, %55
  %65 = phi i1 [ false, %55 ], [ %63, %60 ]
  br i1 %65, label %66, label %71

66:                                               ; preds = %64
  %67 = call i32 @msleep(i32 1)
  %68 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %69 = load i32, i32* @JME_SMBINTF, align 4
  %70 = call i32 @jread32(%struct.jme_adapter* %68, i32 %69)
  store i32 %70, i32* %6, align 4
  br label %55

71:                                               ; preds = %64
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %71
  %75 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %76 = load i32, i32* @hw, align 4
  %77 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %78 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @netif_err(%struct.jme_adapter* %75, i32 %76, i32 %79, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 255, i32* %3, align 4
  br label %87

81:                                               ; preds = %71
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @SMBINTF_HWDATR, align 4
  %84 = and i32 %82, %83
  %85 = load i32, i32* @SMBINTF_HWDATR_SHIFT, align 4
  %86 = lshr i32 %84, %85
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %81, %74, %31
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @jread32(%struct.jme_adapter*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @netif_err(%struct.jme_adapter*, i32, i32, i8*) #1

declare dso_local i32 @jwrite32(%struct.jme_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
