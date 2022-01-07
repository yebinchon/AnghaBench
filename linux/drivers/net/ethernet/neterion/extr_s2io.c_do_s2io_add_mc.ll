; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_do_s2io_add_mc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_do_s2io_add_mc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2io_nic = type { %struct.config_param }
%struct.config_param = type { i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@S2IO_DISABLE_MAC_ENTRY = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@ERR_DBG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"CAM full no space left for multicast MAC\0A\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s2io_nic*, i32*)* @do_s2io_add_mc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_s2io_add_mc(%struct.s2io_nic* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s2io_nic*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.config_param*, align 8
  %9 = alloca i32, align 4
  store %struct.s2io_nic* %0, %struct.s2io_nic** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %11 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %10, i32 0, i32 0
  store %struct.config_param* %11, %struct.config_param** %8, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %26, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @ETH_ALEN, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = load i32, i32* %7, align 4
  %18 = shl i32 %17, 8
  store i32 %18, i32* %7, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %16
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %12

29:                                               ; preds = %12
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp eq i64 0, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @S2IO_DISABLE_MAC_ENTRY, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33, %29
  %38 = load i32, i32* @SUCCESS, align 4
  store i32 %38, i32* %3, align 4
  br label %86

39:                                               ; preds = %33
  %40 = load %struct.config_param*, %struct.config_param** %8, align 8
  %41 = getelementptr inbounds %struct.config_param, %struct.config_param* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %64, %39
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.config_param*, %struct.config_param** %8, align 8
  %46 = getelementptr inbounds %struct.config_param, %struct.config_param* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %43
  %50 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @do_s2io_read_unicast_mc(%struct.s2io_nic* %50, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @S2IO_DISABLE_MAC_ENTRY, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %67

57:                                               ; preds = %49
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* @SUCCESS, align 4
  store i32 %62, i32* %3, align 4
  br label %86

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %43

67:                                               ; preds = %56, %43
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.config_param*, %struct.config_param** %8, align 8
  %70 = getelementptr inbounds %struct.config_param, %struct.config_param* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %68, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load i32, i32* @ERR_DBG, align 4
  %75 = call i32 @DBG_PRINT(i32 %74, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %76 = load i32, i32* @FAILURE, align 4
  store i32 %76, i32* %3, align 4
  br label %86

77:                                               ; preds = %67
  %78 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @do_s2io_copy_mac_addr(%struct.s2io_nic* %78, i32 %79, i32 %80)
  %82 = load %struct.s2io_nic*, %struct.s2io_nic** %4, align 8
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @do_s2io_add_mac(%struct.s2io_nic* %82, i32 %83, i32 %84)
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %77, %73, %61, %37
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @do_s2io_read_unicast_mc(%struct.s2io_nic*, i32) #1

declare dso_local i32 @DBG_PRINT(i32, i8*) #1

declare dso_local i32 @do_s2io_copy_mac_addr(%struct.s2io_nic*, i32, i32) #1

declare dso_local i32 @do_s2io_add_mac(%struct.s2io_nic*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
