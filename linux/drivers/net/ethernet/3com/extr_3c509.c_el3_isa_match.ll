; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c509.c_el3_isa_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c509.c_el3_isa_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.device = type { i32 }

@irq = common dso_local global i32* null, align 8
@el3_cards = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@EL3_IO_EXTENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"3c509-isa\00", align 1
@current_tag = common dso_local global i32 0, align 4
@id_port = common dso_local global i32 0, align 4
@WN0_IRQ = common dso_local global i64 0, align 8
@EL3_ISA = common dso_local global i32 0, align 4
@el3_devs = common dso_local global %struct.net_device** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @el3_isa_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @el3_isa_match(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [3 x i32], align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %13

13:                                               ; preds = %17, %2
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %15 = call i32 @el3_isa_id_sequence(i32* %14)
  store i32 %15, i32* %10, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %13

18:                                               ; preds = %13
  %19 = load i32, i32* %10, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %115

22:                                               ; preds = %18
  %23 = call i32 @id_read_eeprom(i32 8)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = lshr i32 %24, 14
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %11, align 4
  %27 = and i32 %26, 31
  %28 = shl i32 %27, 4
  %29 = add i32 512, %28
  store i32 %29, i32* %7, align 4
  %30 = load i32*, i32** @irq, align 8
  %31 = load i64, i64* @el3_cards, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %46

35:                                               ; preds = %22
  %36 = load i32*, i32** @irq, align 8
  %37 = load i64, i64* @el3_cards, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %39, 16
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load i32*, i32** @irq, align 8
  %43 = load i64, i64* @el3_cards, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %8, align 4
  br label %49

46:                                               ; preds = %35, %22
  %47 = call i32 @id_read_eeprom(i32 9)
  %48 = ashr i32 %47, 12
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %46, %41
  %50 = call %struct.net_device* @alloc_etherdev(i32 4)
  store %struct.net_device* %50, %struct.net_device** %6, align 8
  %51 = load %struct.net_device*, %struct.net_device** %6, align 8
  %52 = icmp ne %struct.net_device* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %115

56:                                               ; preds = %49
  %57 = load %struct.net_device*, %struct.net_device** %6, align 8
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = call i32 @SET_NETDEV_DEV(%struct.net_device* %57, %struct.device* %58)
  %60 = load %struct.net_device*, %struct.net_device** %6, align 8
  %61 = call i32 @netdev_boot_setup_check(%struct.net_device* %60)
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @EL3_IO_EXTENT, align 4
  %64 = call i32 @request_region(i32 %62, i32 %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %56
  %67 = load %struct.net_device*, %struct.net_device** %6, align 8
  %68 = call i32 @free_netdev(%struct.net_device* %67)
  store i32 0, i32* %3, align 4
  br label %115

69:                                               ; preds = %56
  %70 = load i32, i32* @current_tag, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* @current_tag, align 4
  %72 = add nsw i32 208, %71
  %73 = load i32, i32* @id_port, align 4
  %74 = call i32 @outb(i32 %72, i32 %73)
  %75 = load i32, i32* %7, align 4
  %76 = ashr i32 %75, 4
  %77 = or i32 %76, 224
  %78 = load i32, i32* @id_port, align 4
  %79 = call i32 @outb(i32 %77, i32 %78)
  %80 = call i32 @EL3WINDOW(i32 0)
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @inw(i32 %81)
  %83 = icmp ne i32 %82, 27984
  br i1 %83, label %84, label %87

84:                                               ; preds = %69
  %85 = load %struct.net_device*, %struct.net_device** %6, align 8
  %86 = call i32 @free_netdev(%struct.net_device* %85)
  store i32 0, i32* %3, align 4
  br label %115

87:                                               ; preds = %69
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* @WN0_IRQ, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @outw(i32 3840, i64 %91)
  %93 = load %struct.net_device*, %struct.net_device** %6, align 8
  %94 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @EL3_ISA, align 4
  %99 = call i32 @el3_dev_fill(%struct.net_device* %93, i32* %94, i32 %95, i32 %96, i32 %97, i32 %98)
  %100 = load %struct.device*, %struct.device** %4, align 8
  %101 = load %struct.net_device*, %struct.net_device** %6, align 8
  %102 = call i32 @dev_set_drvdata(%struct.device* %100, %struct.net_device* %101)
  %103 = load %struct.net_device*, %struct.net_device** %6, align 8
  %104 = call i64 @el3_common_init(%struct.net_device* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %87
  %107 = load %struct.net_device*, %struct.net_device** %6, align 8
  %108 = call i32 @free_netdev(%struct.net_device* %107)
  store i32 0, i32* %3, align 4
  br label %115

109:                                              ; preds = %87
  %110 = load %struct.net_device*, %struct.net_device** %6, align 8
  %111 = load %struct.net_device**, %struct.net_device*** @el3_devs, align 8
  %112 = load i64, i64* @el3_cards, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* @el3_cards, align 8
  %114 = getelementptr inbounds %struct.net_device*, %struct.net_device** %111, i64 %112
  store %struct.net_device* %110, %struct.net_device** %114, align 8
  store i32 1, i32* %3, align 4
  br label %115

115:                                              ; preds = %109, %106, %84, %66, %53, %21
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @el3_isa_id_sequence(i32*) #1

declare dso_local i32 @id_read_eeprom(i32) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.device*) #1

declare dso_local i32 @netdev_boot_setup_check(%struct.net_device*) #1

declare dso_local i32 @request_region(i32, i32, i8*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @EL3WINDOW(i32) #1

declare dso_local i32 @inw(i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @el3_dev_fill(%struct.net_device*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.net_device*) #1

declare dso_local i64 @el3_common_init(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
