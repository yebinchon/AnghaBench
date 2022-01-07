; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_static_config_reload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_static_config_reload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_private = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.sja1105_mac_config_entry* }
%struct.sja1105_mac_config_entry = type { i64 }

@SJA1105_NUM_PORTS = common dso_local global i32 0, align 4
@BLK_IDX_MAC_CONFIG = common dso_local global i64 0, align 8
@sja1105_speed = common dso_local global i32* null, align 8
@SJA1105_SPEED_AUTO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sja1105_static_config_reload(%struct.sja1105_private* %0) #0 {
  %2 = alloca %struct.sja1105_private*, align 8
  %3 = alloca %struct.sja1105_mac_config_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sja1105_private* %0, %struct.sja1105_private** %2, align 8
  %8 = load i32, i32* @SJA1105_NUM_PORTS, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load %struct.sja1105_private*, %struct.sja1105_private** %2, align 8
  %13 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load i64, i64* @BLK_IDX_MAC_CONFIG, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.sja1105_mac_config_entry*, %struct.sja1105_mac_config_entry** %18, align 8
  store %struct.sja1105_mac_config_entry* %19, %struct.sja1105_mac_config_entry** %3, align 8
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %43, %1
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @SJA1105_NUM_PORTS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %20
  %25 = load i32*, i32** @sja1105_speed, align 8
  %26 = load %struct.sja1105_mac_config_entry*, %struct.sja1105_mac_config_entry** %3, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %26, i64 %28
  %30 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %25, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %11, i64 %35
  store i32 %33, i32* %36, align 4
  %37 = load i64, i64* @SJA1105_SPEED_AUTO, align 8
  %38 = load %struct.sja1105_mac_config_entry*, %struct.sja1105_mac_config_entry** %3, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %38, i64 %40
  %42 = getelementptr inbounds %struct.sja1105_mac_config_entry, %struct.sja1105_mac_config_entry* %41, i32 0, i32 0
  store i64 %37, i64* %42, align 8
  br label %43

43:                                               ; preds = %24
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %20

46:                                               ; preds = %20
  %47 = load %struct.sja1105_private*, %struct.sja1105_private** %2, align 8
  %48 = call i32 @sja1105_static_config_upload(%struct.sja1105_private* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %79

52:                                               ; preds = %46
  %53 = load %struct.sja1105_private*, %struct.sja1105_private** %2, align 8
  %54 = call i32 @sja1105_clocking_setup(%struct.sja1105_private* %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %79

58:                                               ; preds = %52
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %75, %58
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @SJA1105_NUM_PORTS, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %59
  %64 = load %struct.sja1105_private*, %struct.sja1105_private** %2, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %11, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @sja1105_adjust_port_config(%struct.sja1105_private* %64, i32 %65, i32 %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  br label %79

74:                                               ; preds = %63
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %59

78:                                               ; preds = %59
  br label %79

79:                                               ; preds = %78, %73, %57, %51
  %80 = load i32, i32* %6, align 4
  %81 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %81)
  ret i32 %80
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sja1105_static_config_upload(%struct.sja1105_private*) #2

declare dso_local i32 @sja1105_clocking_setup(%struct.sja1105_private*) #2

declare dso_local i32 @sja1105_adjust_port_config(%struct.sja1105_private*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
