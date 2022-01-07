; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_set_vlan_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_set_vlan_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b53_device = type { i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.b53_vlan = type { i32, i32 }

@VA_UNTAG_MASK_25 = common dso_local global i32 0, align 4
@VA_UNTAG_S_25 = common dso_local global i32 0, align 4
@VA_VALID_25_R4 = common dso_local global i32 0, align 4
@VA_VID_HIGH_S = common dso_local global i32 0, align 4
@VA_VALID_25 = common dso_local global i32 0, align 4
@B53_VLAN_PAGE = common dso_local global i32 0, align 4
@B53_VLAN_WRITE_25 = common dso_local global i32 0, align 4
@B53_VLAN_TABLE_ACCESS_25 = common dso_local global i32 0, align 4
@VTA_RW_STATE_WR = common dso_local global i32 0, align 4
@VTA_RW_OP_EN = common dso_local global i32 0, align 4
@VA_UNTAG_MASK_65 = common dso_local global i32 0, align 4
@VA_UNTAG_S_65 = common dso_local global i32 0, align 4
@VA_VALID_65 = common dso_local global i32 0, align 4
@B53_VLAN_WRITE_65 = common dso_local global i32 0, align 4
@B53_VLAN_TABLE_ACCESS_65 = common dso_local global i32 0, align 4
@B53_ARLIO_PAGE = common dso_local global i32 0, align 4
@VTE_UNTAG_S = common dso_local global i32 0, align 4
@VTA_CMD_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"VID: %d, members: 0x%04x, untag: 0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b53_device*, i32, %struct.b53_vlan*)* @b53_set_vlan_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b53_set_vlan_entry(%struct.b53_device* %0, i32 %1, %struct.b53_vlan* %2) #0 {
  %4 = alloca %struct.b53_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.b53_vlan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.b53_device* %0, %struct.b53_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.b53_vlan* %2, %struct.b53_vlan** %6, align 8
  %9 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %10 = call i64 @is5325(%struct.b53_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %61

12:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  %13 = load %struct.b53_vlan*, %struct.b53_vlan** %6, align 8
  %14 = getelementptr inbounds %struct.b53_vlan, %struct.b53_vlan* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %46

17:                                               ; preds = %12
  %18 = load %struct.b53_vlan*, %struct.b53_vlan** %6, align 8
  %19 = getelementptr inbounds %struct.b53_vlan, %struct.b53_vlan* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @VA_UNTAG_MASK_25, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @VA_UNTAG_S_25, align 4
  %24 = shl i32 %22, %23
  %25 = load %struct.b53_vlan*, %struct.b53_vlan** %6, align 8
  %26 = getelementptr inbounds %struct.b53_vlan, %struct.b53_vlan* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %24, %27
  store i32 %28, i32* %7, align 4
  %29 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %30 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sge i32 %31, 3
  br i1 %32, label %33, label %41

33:                                               ; preds = %17
  %34 = load i32, i32* @VA_VALID_25_R4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @VA_VID_HIGH_S, align 4
  %37 = shl i32 %35, %36
  %38 = or i32 %34, %37
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %45

41:                                               ; preds = %17
  %42 = load i32, i32* @VA_VALID_25, align 4
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %41, %33
  br label %46

46:                                               ; preds = %45, %12
  %47 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %48 = load i32, i32* @B53_VLAN_PAGE, align 4
  %49 = load i32, i32* @B53_VLAN_WRITE_25, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @b53_write32(%struct.b53_device* %47, i32 %48, i32 %49, i32 %50)
  %52 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %53 = load i32, i32* @B53_VLAN_PAGE, align 4
  %54 = load i32, i32* @B53_VLAN_TABLE_ACCESS_25, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @VTA_RW_STATE_WR, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @VTA_RW_OP_EN, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @b53_write16(%struct.b53_device* %52, i32 %53, i32 %54, i32 %59)
  br label %130

61:                                               ; preds = %3
  %62 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %63 = call i64 @is5365(%struct.b53_device* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %99

65:                                               ; preds = %61
  store i32 0, i32* %8, align 4
  %66 = load %struct.b53_vlan*, %struct.b53_vlan** %6, align 8
  %67 = getelementptr inbounds %struct.b53_vlan, %struct.b53_vlan* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %65
  %71 = load %struct.b53_vlan*, %struct.b53_vlan** %6, align 8
  %72 = getelementptr inbounds %struct.b53_vlan, %struct.b53_vlan* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @VA_UNTAG_MASK_65, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* @VA_UNTAG_S_65, align 4
  %77 = shl i32 %75, %76
  %78 = load %struct.b53_vlan*, %struct.b53_vlan** %6, align 8
  %79 = getelementptr inbounds %struct.b53_vlan, %struct.b53_vlan* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %77, %80
  %82 = load i32, i32* @VA_VALID_65, align 4
  %83 = or i32 %81, %82
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %70, %65
  %85 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %86 = load i32, i32* @B53_VLAN_PAGE, align 4
  %87 = load i32, i32* @B53_VLAN_WRITE_65, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @b53_write16(%struct.b53_device* %85, i32 %86, i32 %87, i32 %88)
  %90 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %91 = load i32, i32* @B53_VLAN_PAGE, align 4
  %92 = load i32, i32* @B53_VLAN_TABLE_ACCESS_65, align 4
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @VTA_RW_STATE_WR, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @VTA_RW_OP_EN, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @b53_write16(%struct.b53_device* %90, i32 %91, i32 %92, i32 %97)
  br label %129

99:                                               ; preds = %61
  %100 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %101 = load i32, i32* @B53_ARLIO_PAGE, align 4
  %102 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %103 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @b53_write16(%struct.b53_device* %100, i32 %101, i32 %106, i32 %107)
  %109 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %110 = load i32, i32* @B53_ARLIO_PAGE, align 4
  %111 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %112 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.b53_vlan*, %struct.b53_vlan** %6, align 8
  %117 = getelementptr inbounds %struct.b53_vlan, %struct.b53_vlan* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @VTE_UNTAG_S, align 4
  %120 = shl i32 %118, %119
  %121 = load %struct.b53_vlan*, %struct.b53_vlan** %6, align 8
  %122 = getelementptr inbounds %struct.b53_vlan, %struct.b53_vlan* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %120, %123
  %125 = call i32 @b53_write32(%struct.b53_device* %109, i32 %110, i32 %115, i32 %124)
  %126 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %127 = load i32, i32* @VTA_CMD_WRITE, align 4
  %128 = call i32 @b53_do_vlan_op(%struct.b53_device* %126, i32 %127)
  br label %129

129:                                              ; preds = %99, %84
  br label %130

130:                                              ; preds = %129, %46
  %131 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %132 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %131, i32 0, i32 1
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %5, align 4
  %137 = load %struct.b53_vlan*, %struct.b53_vlan** %6, align 8
  %138 = getelementptr inbounds %struct.b53_vlan, %struct.b53_vlan* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.b53_vlan*, %struct.b53_vlan** %6, align 8
  %141 = getelementptr inbounds %struct.b53_vlan, %struct.b53_vlan* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @dev_dbg(i32 %135, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %136, i32 %139, i32 %142)
  ret void
}

declare dso_local i64 @is5325(%struct.b53_device*) #1

declare dso_local i32 @b53_write32(%struct.b53_device*, i32, i32, i32) #1

declare dso_local i32 @b53_write16(%struct.b53_device*, i32, i32, i32) #1

declare dso_local i64 @is5365(%struct.b53_device*) #1

declare dso_local i32 @b53_do_vlan_op(%struct.b53_device*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
