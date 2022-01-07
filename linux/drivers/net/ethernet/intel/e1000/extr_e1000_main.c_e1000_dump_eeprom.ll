; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_dump_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_dump_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { %struct.net_device* }
%struct.net_device = type { %struct.ethtool_ops* }
%struct.ethtool_ops = type { i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)*, i32 (%struct.net_device*)* }
%struct.ethtool_eeprom = type opaque
%struct.ethtool_eeprom.0 = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@EEPROM_CHECKSUM_REG = common dso_local global i32 0, align 4
@EEPROM_SUM = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"/*********************/\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Current EEPROM Checksum : 0x%04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Calculated              : 0x%04x\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Offset    Values\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"========  ======\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [60 x i8] c"Include this output when contacting your support provider.\0A\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"This is not a software error! Something bad happened to\0A\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"your hardware or EEPROM image. Ignoring this problem could\0A\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"result in further problems, possibly loss of data,\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"corruption or system hangs!\0A\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"The MAC Address will be reset to 00:00:00:00:00:00,\0A\00", align 1
@.str.12 = private unnamed_addr constant [57 x i8] c"which is invalid and requires you to set the proper MAC\0A\00", align 1
@.str.13 = private unnamed_addr constant [59 x i8] c"address manually before continuing to enable this network\0A\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"device. Please inspect the EEPROM dump and report the\0A\00", align 1
@.str.15 = private unnamed_addr constant [58 x i8] c"issue to your hardware vendor or Intel Customer Support.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*)* @e1000_dump_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_dump_eeprom(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_eeprom.0, align 8
  %5 = alloca %struct.ethtool_ops*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %10 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %10, i32 0, i32 0
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %3, align 8
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load %struct.ethtool_ops*, %struct.ethtool_ops** %14, align 8
  store %struct.ethtool_ops* %15, %struct.ethtool_ops** %5, align 8
  store i32* null, i32** %9, align 8
  %16 = load %struct.ethtool_ops*, %struct.ethtool_ops** %5, align 8
  %17 = getelementptr inbounds %struct.ethtool_ops, %struct.ethtool_ops* %16, i32 0, i32 1
  %18 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %17, align 8
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = call i32 %18(%struct.net_device* %19)
  %21 = getelementptr inbounds %struct.ethtool_eeprom.0, %struct.ethtool_eeprom.0* %4, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.ethtool_eeprom.0, %struct.ethtool_eeprom.0* %4, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = getelementptr inbounds %struct.ethtool_eeprom.0, %struct.ethtool_eeprom.0* %4, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32* @kmalloc(i32 %24, i32 %25)
  store i32* %26, i32** %6, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %1
  br label %112

30:                                               ; preds = %1
  %31 = load %struct.ethtool_ops*, %struct.ethtool_ops** %5, align 8
  %32 = getelementptr inbounds %struct.ethtool_ops, %struct.ethtool_ops* %31, i32 0, i32 0
  %33 = load i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)*, i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)** %32, align 8
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = bitcast %struct.ethtool_eeprom.0* %4 to %struct.ethtool_eeprom*
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 %33(%struct.net_device* %34, %struct.ethtool_eeprom* %35, i32* %36)
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* @EEPROM_CHECKSUM_REG, align 4
  %40 = mul nsw i32 %39, 2
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* @EEPROM_CHECKSUM_REG, align 4
  %46 = mul nsw i32 %45, 2
  %47 = add nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %44, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 8
  %52 = add nsw i32 %43, %51
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i32*
  store i32* %54, i32** %8, align 8
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %77, %30
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @EEPROM_CHECKSUM_REG, align 4
  %58 = mul nsw i32 %57, 2
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %80

60:                                               ; preds = %55
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 8
  %73 = add nsw i32 %65, %72
  %74 = load i32*, i32** %9, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32* %76, i32** %9, align 8
  br label %77

77:                                               ; preds = %60
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 2
  store i32 %79, i32* %7, align 4
  br label %55

80:                                               ; preds = %55
  %81 = load i32*, i32** @EEPROM_SUM, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = ptrtoint i32* %81 to i64
  %84 = ptrtoint i32* %82 to i64
  %85 = sub i64 %83, %84
  %86 = sdiv exact i64 %85, 4
  %87 = inttoptr i64 %86 to i32*
  store i32* %87, i32** %9, align 8
  %88 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32* %89)
  %91 = load i32*, i32** %9, align 8
  %92 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32* %91)
  %93 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %94 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %95 = load i32, i32* @KERN_ERR, align 4
  %96 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %97 = load i32*, i32** %6, align 8
  %98 = call i32 @print_hex_dump(i32 %95, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i32 %96, i32 16, i32 1, i32* %97, i32 128, i32 0)
  %99 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0))
  %100 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0))
  %101 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i64 0, i64 0))
  %102 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0))
  %103 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  %104 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0))
  %105 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.12, i64 0, i64 0))
  %106 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.13, i64 0, i64 0))
  %107 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.14, i64 0, i64 0))
  %108 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.15, i64 0, i64 0))
  %109 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %110 = load i32*, i32** %6, align 8
  %111 = call i32 @kfree(i32* %110)
  br label %112

112:                                              ; preds = %80, %29
  ret void
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @print_hex_dump(i32, i8*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
