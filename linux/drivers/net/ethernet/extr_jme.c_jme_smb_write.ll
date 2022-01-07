; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_smb_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_smb_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { i32 }

@JME_SMBCSR = common dso_local global i32 0, align 4
@JME_SMB_BUSY_TIMEOUT = common dso_local global i32 0, align 4
@SMBCSR_BUSY = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"SMB Bus Busy\0A\00", align 1
@JME_SMBINTF = common dso_local global i32 0, align 4
@SMBINTF_HWDATW_SHIFT = common dso_local global i32 0, align 4
@SMBINTF_HWDATW = common dso_local global i32 0, align 4
@SMBINTF_HWADDR_SHIFT = common dso_local global i32 0, align 4
@SMBINTF_HWADDR = common dso_local global i32 0, align 4
@SMBINTF_HWRWN_WRITE = common dso_local global i32 0, align 4
@SMBINTF_HWCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jme_adapter*, i32, i32)* @jme_smb_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_smb_write(%struct.jme_adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.jme_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.jme_adapter* %0, %struct.jme_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %10 = load i32, i32* @JME_SMBCSR, align 4
  %11 = call i32 @jread32(%struct.jme_adapter* %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @JME_SMB_BUSY_TIMEOUT, align 4
  store i32 %12, i32* %8, align 4
  br label %13

13:                                               ; preds = %24, %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @SMBCSR_BUSY, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i32, i32* %8, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %18, %13
  %23 = phi i1 [ false, %13 ], [ %21, %18 ]
  br i1 %23, label %24, label %29

24:                                               ; preds = %22
  %25 = call i32 @msleep(i32 1)
  %26 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %27 = load i32, i32* @JME_SMBCSR, align 4
  %28 = call i32 @jread32(%struct.jme_adapter* %26, i32 %27)
  store i32 %28, i32* %7, align 4
  br label %13

29:                                               ; preds = %22
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %29
  %33 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %34 = load i32, i32* @hw, align 4
  %35 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %36 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @netif_err(%struct.jme_adapter* %33, i32 %34, i32 %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %90

39:                                               ; preds = %29
  %40 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %41 = load i32, i32* @JME_SMBINTF, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @SMBINTF_HWDATW_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = load i32, i32* @SMBINTF_HWDATW, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @SMBINTF_HWADDR_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = load i32, i32* @SMBINTF_HWADDR, align 4
  %51 = and i32 %49, %50
  %52 = or i32 %46, %51
  %53 = load i32, i32* @SMBINTF_HWRWN_WRITE, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @SMBINTF_HWCMD, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @jwrite32(%struct.jme_adapter* %40, i32 %41, i32 %56)
  %58 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %59 = load i32, i32* @JME_SMBINTF, align 4
  %60 = call i32 @jread32(%struct.jme_adapter* %58, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* @JME_SMB_BUSY_TIMEOUT, align 4
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %73, %39
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @SMBINTF_HWCMD, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br label %71

71:                                               ; preds = %67, %62
  %72 = phi i1 [ false, %62 ], [ %70, %67 ]
  br i1 %72, label %73, label %78

73:                                               ; preds = %71
  %74 = call i32 @msleep(i32 1)
  %75 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %76 = load i32, i32* @JME_SMBINTF, align 4
  %77 = call i32 @jread32(%struct.jme_adapter* %75, i32 %76)
  store i32 %77, i32* %7, align 4
  br label %62

78:                                               ; preds = %71
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %78
  %82 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %83 = load i32, i32* @hw, align 4
  %84 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %85 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @netif_err(%struct.jme_adapter* %82, i32 %83, i32 %86, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %90

88:                                               ; preds = %78
  %89 = call i32 @mdelay(i32 2)
  br label %90

90:                                               ; preds = %88, %81, %32
  ret void
}

declare dso_local i32 @jread32(%struct.jme_adapter*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @netif_err(%struct.jme_adapter*, i32, i32, i8*) #1

declare dso_local i32 @jwrite32(%struct.jme_adapter*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
