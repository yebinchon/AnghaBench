; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477.c_ksz9477_set_vlan_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477.c_ksz9477_set_vlan_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_device = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8** }

@REG_SW_VLAN_ENTRY__4 = common dso_local global i32 0, align 4
@REG_SW_VLAN_ENTRY_UNTAG__4 = common dso_local global i32 0, align 4
@REG_SW_VLAN_ENTRY_PORTS__4 = common dso_local global i32 0, align 4
@REG_SW_VLAN_ENTRY_INDEX__2 = common dso_local global i32 0, align 4
@VLAN_INDEX_M = common dso_local global i64 0, align 8
@REG_SW_VLAN_CTRL = common dso_local global i32 0, align 4
@VLAN_START = common dso_local global i32 0, align 4
@VLAN_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to write vlan table\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ksz_device*, i64, i8**)* @ksz9477_set_vlan_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksz9477_set_vlan_table(%struct.ksz_device* %0, i64 %1, i8** %2) #0 {
  %4 = alloca %struct.ksz_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  store %struct.ksz_device* %0, %struct.ksz_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8** %2, i8*** %6, align 8
  %8 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %9 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %12 = load i32, i32* @REG_SW_VLAN_ENTRY__4, align 4
  %13 = load i8**, i8*** %6, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @ksz_write32(%struct.ksz_device* %11, i32 %12, i8* %15)
  %17 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %18 = load i32, i32* @REG_SW_VLAN_ENTRY_UNTAG__4, align 4
  %19 = load i8**, i8*** %6, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @ksz_write32(%struct.ksz_device* %17, i32 %18, i8* %21)
  %23 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %24 = load i32, i32* @REG_SW_VLAN_ENTRY_PORTS__4, align 4
  %25 = load i8**, i8*** %6, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 2
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @ksz_write32(%struct.ksz_device* %23, i32 %24, i8* %27)
  %29 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %30 = load i32, i32* @REG_SW_VLAN_ENTRY_INDEX__2, align 4
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @VLAN_INDEX_M, align 8
  %33 = and i64 %31, %32
  %34 = call i32 @ksz_write16(%struct.ksz_device* %29, i32 %30, i64 %33)
  %35 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %36 = load i32, i32* @REG_SW_VLAN_CTRL, align 4
  %37 = load i32, i32* @VLAN_START, align 4
  %38 = load i32, i32* @VLAN_WRITE, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @ksz_write8(%struct.ksz_device* %35, i32 %36, i32 %39)
  %41 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %42 = call i32 @ksz9477_wait_vlan_ctrl_ready(%struct.ksz_device* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %3
  %46 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %47 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @dev_dbg(i32 %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %87

50:                                               ; preds = %3
  %51 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %52 = load i32, i32* @REG_SW_VLAN_CTRL, align 4
  %53 = call i32 @ksz_write8(%struct.ksz_device* %51, i32 %52, i32 0)
  %54 = load i8**, i8*** %6, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 0
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %58 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i64, i64* %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i8**, i8*** %62, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 0
  store i8* %56, i8** %64, align 8
  %65 = load i8**, i8*** %6, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 1
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %69 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i64, i64* %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i8**, i8*** %73, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 1
  store i8* %67, i8** %75, align 8
  %76 = load i8**, i8*** %6, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 2
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %80 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i64, i64* %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i8**, i8*** %84, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 2
  store i8* %78, i8** %86, align 8
  br label %87

87:                                               ; preds = %50, %45
  %88 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %89 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %88, i32 0, i32 0
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = load i32, i32* %7, align 4
  ret i32 %91
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ksz_write32(%struct.ksz_device*, i32, i8*) #1

declare dso_local i32 @ksz_write16(%struct.ksz_device*, i32, i64) #1

declare dso_local i32 @ksz_write8(%struct.ksz_device*, i32, i32) #1

declare dso_local i32 @ksz9477_wait_vlan_ctrl_ready(%struct.ksz_device*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
