; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc75xx.c_smsc75xx_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc75xx.c_smsc75xx_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usbnet = type { i32, i64* }
%struct.smsc75xx_priv = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"resume suspend_flags=0x%02x\0A\00", align 1
@SUSPEND_ALLMODES = common dso_local global i32 0, align 4
@WUCSR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Error reading WUCSR\0A\00", align 1
@WUCSR_WUEN = common dso_local global i32 0, align 4
@WUCSR_MPEN = common dso_local global i32 0, align 4
@WUCSR_PFDA_EN = common dso_local global i32 0, align 4
@WUCSR_BCST_EN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Error writing WUCSR\0A\00", align 1
@PMT_CTL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Error reading PMT_CTL\0A\00", align 1
@PMT_CTL_WOL_EN = common dso_local global i32 0, align 4
@PMT_CTL_WUPS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Error writing PMT_CTL\0A\00", align 1
@SUSPEND_SUSPEND2 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"resuming from SUSPEND2\0A\00", align 1
@PMT_CTL_PHY_PWRUP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"device not ready in smsc75xx_resume\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*)* @smsc75xx_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc75xx_resume(%struct.usb_interface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca %struct.smsc75xx_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  %9 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %10 = call %struct.usbnet* @usb_get_intfdata(%struct.usb_interface* %9)
  store %struct.usbnet* %10, %struct.usbnet** %4, align 8
  %11 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %12 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %11, i32 0, i32 1
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.smsc75xx_priv*
  store %struct.smsc75xx_priv* %16, %struct.smsc75xx_priv** %5, align 8
  %17 = load %struct.smsc75xx_priv*, %struct.smsc75xx_priv** %5, align 8
  %18 = getelementptr inbounds %struct.smsc75xx_priv, %struct.smsc75xx_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %21 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @netdev_dbg(i32 %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.smsc75xx_priv*, %struct.smsc75xx_priv** %5, align 8
  %26 = getelementptr inbounds %struct.smsc75xx_priv, %struct.smsc75xx_priv* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @SUSPEND_ALLMODES, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %99

31:                                               ; preds = %1
  %32 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %33 = load i32, i32* @WUCSR, align 4
  %34 = call i32 @smsc75xx_read_reg_nopm(%struct.usbnet* %32, i32 %33, i32* %8)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %39 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @netdev_warn(i32 %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %2, align 4
  br label %151

43:                                               ; preds = %31
  %44 = load i32, i32* @WUCSR_WUEN, align 4
  %45 = load i32, i32* @WUCSR_MPEN, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @WUCSR_PFDA_EN, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @WUCSR_BCST_EN, align 4
  %50 = or i32 %48, %49
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %8, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %8, align 4
  %54 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %55 = load i32, i32* @WUCSR, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @smsc75xx_write_reg_nopm(%struct.usbnet* %54, i32 %55, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %43
  %61 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %62 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @netdev_warn(i32 %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %2, align 4
  br label %151

66:                                               ; preds = %43
  %67 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %68 = load i32, i32* @PMT_CTL, align 4
  %69 = call i32 @smsc75xx_read_reg_nopm(%struct.usbnet* %67, i32 %68, i32* %8)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %74 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @netdev_warn(i32 %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %2, align 4
  br label %151

78:                                               ; preds = %66
  %79 = load i32, i32* @PMT_CTL_WOL_EN, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %8, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* @PMT_CTL_WUPS, align 4
  %84 = load i32, i32* %8, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %8, align 4
  %86 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %87 = load i32, i32* @PMT_CTL, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @smsc75xx_write_reg_nopm(%struct.usbnet* %86, i32 %87, i32 %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %78
  %93 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %94 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @netdev_warn(i32 %95, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %2, align 4
  br label %151

98:                                               ; preds = %78
  br label %99

99:                                               ; preds = %98, %1
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @SUSPEND_SUSPEND2, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %137

104:                                              ; preds = %99
  %105 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %106 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @netdev_info(i32 %107, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %109 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %110 = load i32, i32* @PMT_CTL, align 4
  %111 = call i32 @smsc75xx_read_reg_nopm(%struct.usbnet* %109, i32 %110, i32* %8)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %104
  %115 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %116 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @netdev_warn(i32 %117, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %119 = load i32, i32* %7, align 4
  store i32 %119, i32* %2, align 4
  br label %151

120:                                              ; preds = %104
  %121 = load i32, i32* @PMT_CTL_PHY_PWRUP, align 4
  %122 = load i32, i32* %8, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %8, align 4
  %124 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %125 = load i32, i32* @PMT_CTL, align 4
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @smsc75xx_write_reg_nopm(%struct.usbnet* %124, i32 %125, i32 %126)
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %120
  %131 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %132 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @netdev_warn(i32 %133, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %135 = load i32, i32* %7, align 4
  store i32 %135, i32* %2, align 4
  br label %151

136:                                              ; preds = %120
  br label %137

137:                                              ; preds = %136, %99
  %138 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %139 = call i32 @smsc75xx_wait_ready(%struct.usbnet* %138, i32 1)
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %7, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %137
  %143 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %144 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @netdev_warn(i32 %145, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %147 = load i32, i32* %7, align 4
  store i32 %147, i32* %2, align 4
  br label %151

148:                                              ; preds = %137
  %149 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %150 = call i32 @usbnet_resume(%struct.usb_interface* %149)
  store i32 %150, i32* %2, align 4
  br label %151

151:                                              ; preds = %148, %142, %130, %114, %92, %72, %60, %37
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local %struct.usbnet* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32) #1

declare dso_local i32 @smsc75xx_read_reg_nopm(%struct.usbnet*, i32, i32*) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

declare dso_local i32 @smsc75xx_write_reg_nopm(%struct.usbnet*, i32, i32) #1

declare dso_local i32 @netdev_info(i32, i8*) #1

declare dso_local i32 @smsc75xx_wait_ready(%struct.usbnet*, i32) #1

declare dso_local i32 @usbnet_resume(%struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
