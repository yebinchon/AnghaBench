; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc75xx.c_smsc75xx_phy_gig_workaround.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc75xx.c_smsc75xx_phy_gig_workaround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, %struct.mii_if_info }
%struct.mii_if_info = type { i32 }

@MII_BMCR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Timeout waiting for PHY link up\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@PMT_CTL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to read PMT_CTL: %d\0A\00", align 1
@PMT_CTL_PHY_RST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to write PMT_CTL: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"timeout waiting for PHY Reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @smsc75xx_phy_gig_workaround to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc75xx_phy_gig_workaround(%struct.usbnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.mii_if_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  %9 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %10 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %9, i32 0, i32 1
  store %struct.mii_if_info* %10, %struct.mii_if_info** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %12 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.mii_if_info*, %struct.mii_if_info** %4, align 8
  %15 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MII_BMCR, align 4
  %18 = call i32 @smsc75xx_mdio_write(i32 %13, i32 %16, i32 %17, i32 16448)
  br label %19

19:                                               ; preds = %31, %1
  %20 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %21 = call i32 @smsc75xx_link_ok_nopm(%struct.usbnet* %20)
  store i32 %21, i32* %8, align 4
  %22 = call i32 @usleep_range(i32 10000, i32 20000)
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 1000
  br label %31

31:                                               ; preds = %28, %25
  %32 = phi i1 [ false, %25 ], [ %30, %28 ]
  br i1 %32, label %19, label %33

33:                                               ; preds = %31
  %34 = load i32, i32* %6, align 4
  %35 = icmp sge i32 %34, 1000
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %38 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i32, i8*, ...) @netdev_warn(i32 %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %112

43:                                               ; preds = %33
  %44 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %45 = load i32, i32* @PMT_CTL, align 4
  %46 = call i32 @smsc75xx_read_reg(%struct.usbnet* %44, i32 %45, i32* %7)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %51 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 (i32, i8*, ...) @netdev_warn(i32 %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %112

56:                                               ; preds = %43
  %57 = load i32, i32* @PMT_CTL_PHY_RST, align 4
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %7, align 4
  %60 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %61 = load i32, i32* @PMT_CTL, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @smsc75xx_write_reg(%struct.usbnet* %60, i32 %61, i32 %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %56
  %67 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %68 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 (i32, i8*, ...) @netdev_warn(i32 %69, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %2, align 4
  br label %112

73:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %99, %73
  %75 = call i32 @usleep_range(i32 10000, i32 20000)
  %76 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %77 = load i32, i32* @PMT_CTL, align 4
  %78 = call i32 @smsc75xx_read_reg(%struct.usbnet* %76, i32 %77, i32* %7)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %74
  %82 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %83 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %5, align 4
  %86 = call i32 (i32, i8*, ...) @netdev_warn(i32 %84, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* %2, align 4
  br label %112

88:                                               ; preds = %74
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @PMT_CTL_PHY_RST, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32, i32* %6, align 4
  %98 = icmp slt i32 %97, 100
  br label %99

99:                                               ; preds = %96, %91
  %100 = phi i1 [ false, %91 ], [ %98, %96 ]
  br i1 %100, label %74, label %101

101:                                              ; preds = %99
  %102 = load i32, i32* %6, align 4
  %103 = icmp sge i32 %102, 100
  br i1 %103, label %104, label %111

104:                                              ; preds = %101
  %105 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %106 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i32, i8*, ...) @netdev_warn(i32 %107, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %109 = load i32, i32* @EIO, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %2, align 4
  br label %112

111:                                              ; preds = %101
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %111, %104, %81, %66, %49, %36
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @smsc75xx_mdio_write(i32, i32, i32, i32) #1

declare dso_local i32 @smsc75xx_link_ok_nopm(%struct.usbnet*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @netdev_warn(i32, i8*, ...) #1

declare dso_local i32 @smsc75xx_read_reg(%struct.usbnet*, i32, i32*) #1

declare dso_local i32 @smsc75xx_write_reg(%struct.usbnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
