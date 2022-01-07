; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_update_port_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_update_port_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.hclge_mac }
%struct.hclge_mac = type { i64, i64, i32 }

@HCLGE_MAC_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@HNAE3_MEDIA_TYPE_COPPER = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@QUERY_ACTIVE_SPEED = common dso_local global i64 0, align 8
@HCLGE_MAC_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*)* @hclge_update_port_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_update_port_info(%struct.hclge_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca %struct.hclge_mac*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  %7 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %8 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store %struct.hclge_mac* %9, %struct.hclge_mac** %4, align 8
  %10 = load i32, i32* @HCLGE_MAC_SPEED_UNKNOWN, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.hclge_mac*, %struct.hclge_mac** %4, align 8
  %12 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @HNAE3_MEDIA_TYPE_COPPER, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %85

17:                                               ; preds = %1
  %18 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %19 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %85

23:                                               ; preds = %17
  %24 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %25 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %28, 33
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %32 = load %struct.hclge_mac*, %struct.hclge_mac** %4, align 8
  %33 = call i32 @hclge_get_sfp_info(%struct.hclge_dev* %31, %struct.hclge_mac* %32)
  store i32 %33, i32* %6, align 4
  br label %37

34:                                               ; preds = %23
  %35 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %36 = call i32 @hclge_get_sfp_speed(%struct.hclge_dev* %35, i32* %5)
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %34, %30
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %44 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %2, align 4
  br label %85

46:                                               ; preds = %37
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %85

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %54 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp sge i32 %57, 33
  br i1 %58, label %59, label %75

59:                                               ; preds = %52
  %60 = load %struct.hclge_mac*, %struct.hclge_mac** %4, align 8
  %61 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @QUERY_ACTIVE_SPEED, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load %struct.hclge_mac*, %struct.hclge_mac** %4, align 8
  %67 = call i32 @hclge_update_port_capability(%struct.hclge_mac* %66)
  store i32 0, i32* %2, align 4
  br label %85

68:                                               ; preds = %59
  %69 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %70 = load %struct.hclge_mac*, %struct.hclge_mac** %4, align 8
  %71 = getelementptr inbounds %struct.hclge_mac, %struct.hclge_mac* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @HCLGE_MAC_FULL, align 4
  %74 = call i32 @hclge_cfg_mac_speed_dup(%struct.hclge_dev* %69, i32 %72, i32 %73)
  store i32 %74, i32* %2, align 4
  br label %85

75:                                               ; preds = %52
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @HCLGE_MAC_SPEED_UNKNOWN, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  store i32 0, i32* %2, align 4
  br label %85

80:                                               ; preds = %75
  %81 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @HCLGE_MAC_FULL, align 4
  %84 = call i32 @hclge_cfg_mac_speed_dup(%struct.hclge_dev* %81, i32 %82, i32 %83)
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %80, %79, %68, %65, %49, %42, %22, %16
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @hclge_get_sfp_info(%struct.hclge_dev*, %struct.hclge_mac*) #1

declare dso_local i32 @hclge_get_sfp_speed(%struct.hclge_dev*, i32*) #1

declare dso_local i32 @hclge_update_port_capability(%struct.hclge_mac*) #1

declare dso_local i32 @hclge_cfg_mac_speed_dup(%struct.hclge_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
