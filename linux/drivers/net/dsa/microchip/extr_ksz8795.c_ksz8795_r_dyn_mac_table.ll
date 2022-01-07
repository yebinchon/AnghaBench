; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz8795.c_ksz8795_r_dyn_mac_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz8795.c_ksz8795_r_dyn_mac_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_device = type { i32 }

@TABLE_DYNAMIC_MAC = common dso_local global i32 0, align 4
@TABLE_READ = common dso_local global i32 0, align 4
@REG_IND_CTRL_0 = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@REG_IND_DATA_HI = common dso_local global i32 0, align 4
@DYNAMIC_MAC_TABLE_ENTRIES_H = common dso_local global i32 0, align 4
@DYNAMIC_MAC_ENTRIES_H_S = common dso_local global i32 0, align 4
@DYNAMIC_MAC_TABLE_ENTRIES = common dso_local global i32 0, align 4
@DYNAMIC_MAC_ENTRIES_S = common dso_local global i32 0, align 4
@DYNAMIC_MAC_TABLE_FID = common dso_local global i32 0, align 4
@DYNAMIC_MAC_FID_S = common dso_local global i32 0, align 4
@DYNAMIC_MAC_TABLE_SRC_PORT = common dso_local global i32 0, align 4
@DYNAMIC_MAC_SRC_PORT_S = common dso_local global i32 0, align 4
@DYNAMIC_MAC_TABLE_TIMESTAMP = common dso_local global i32 0, align 4
@DYNAMIC_MAC_TIMESTAMP_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ksz_device*, i32, i32*, i32*, i32*, i32*, i32*)* @ksz8795_r_dyn_mac_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksz8795_r_dyn_mac_table(%struct.ksz_device* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.ksz_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.ksz_device* %0, %struct.ksz_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %22 = load i32, i32* @TABLE_DYNAMIC_MAC, align 4
  %23 = load i32, i32* @TABLE_READ, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @IND_ACC_TABLE(i32 %24)
  %26 = load i32, i32* %9, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %17, align 4
  %28 = load %struct.ksz_device*, %struct.ksz_device** %8, align 8
  %29 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.ksz_device*, %struct.ksz_device** %8, align 8
  %32 = load i32, i32* @REG_IND_CTRL_0, align 4
  %33 = load i32, i32* %17, align 4
  %34 = call i32 @ksz_write16(%struct.ksz_device* %31, i32 %32, i32 %33)
  %35 = load %struct.ksz_device*, %struct.ksz_device** %8, align 8
  %36 = call i32 @ksz8795_valid_dyn_entry(%struct.ksz_device* %35, i32* %18)
  store i32 %36, i32* %19, align 4
  %37 = load i32, i32* %19, align 4
  %38 = load i32, i32* @EAGAIN, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %7
  %42 = load i32, i32* %9, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32*, i32** %14, align 8
  store i32 0, i32* %45, align 4
  br label %46

46:                                               ; preds = %44, %41
  br label %118

47:                                               ; preds = %7
  %48 = load i32, i32* %19, align 4
  %49 = load i32, i32* @ENXIO, align 4
  %50 = sub nsw i32 0, %49
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32*, i32** %14, align 8
  store i32 0, i32* %53, align 4
  br label %117

54:                                               ; preds = %47
  store i32 0, i32* %20, align 4
  %55 = load %struct.ksz_device*, %struct.ksz_device** %8, align 8
  %56 = load i32, i32* @REG_IND_DATA_HI, align 4
  %57 = call i32 @ksz_read64(%struct.ksz_device* %55, i32 %56, i32* %20)
  %58 = load i32, i32* %20, align 4
  %59 = ashr i32 %58, 32
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %20, align 4
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %18, align 4
  %62 = load i32, i32* @DYNAMIC_MAC_TABLE_ENTRIES_H, align 4
  %63 = and i32 %61, %62
  store i32 %63, i32* %21, align 4
  %64 = load i32, i32* @DYNAMIC_MAC_ENTRIES_H_S, align 4
  %65 = load i32, i32* %21, align 4
  %66 = shl i32 %65, %64
  store i32 %66, i32* %21, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* @DYNAMIC_MAC_TABLE_ENTRIES, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* @DYNAMIC_MAC_ENTRIES_S, align 4
  %71 = ashr i32 %69, %70
  %72 = load i32, i32* %21, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %21, align 4
  %74 = load i32, i32* %21, align 4
  %75 = add nsw i32 %74, 1
  %76 = load i32*, i32** %14, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* @DYNAMIC_MAC_TABLE_FID, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* @DYNAMIC_MAC_FID_S, align 4
  %81 = ashr i32 %79, %80
  %82 = load i32*, i32** %11, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* @DYNAMIC_MAC_TABLE_SRC_PORT, align 4
  %85 = and i32 %83, %84
  %86 = load i32, i32* @DYNAMIC_MAC_SRC_PORT_S, align 4
  %87 = ashr i32 %85, %86
  %88 = load i32*, i32** %12, align 8
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* @DYNAMIC_MAC_TABLE_TIMESTAMP, align 4
  %91 = and i32 %89, %90
  %92 = load i32, i32* @DYNAMIC_MAC_TIMESTAMP_S, align 4
  %93 = ashr i32 %91, %92
  %94 = load i32*, i32** %13, align 8
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* %16, align 4
  %96 = load i32*, i32** %10, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 5
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %16, align 4
  %99 = ashr i32 %98, 8
  %100 = load i32*, i32** %10, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 4
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* %16, align 4
  %103 = ashr i32 %102, 16
  %104 = load i32*, i32** %10, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 3
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* %16, align 4
  %107 = ashr i32 %106, 24
  %108 = load i32*, i32** %10, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 2
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %15, align 4
  %111 = load i32*, i32** %10, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* %15, align 4
  %114 = ashr i32 %113, 8
  %115 = load i32*, i32** %10, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  store i32 %114, i32* %116, align 4
  store i32 0, i32* %19, align 4
  br label %117

117:                                              ; preds = %54, %52
  br label %118

118:                                              ; preds = %117, %46
  %119 = load %struct.ksz_device*, %struct.ksz_device** %8, align 8
  %120 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %119, i32 0, i32 0
  %121 = call i32 @mutex_unlock(i32* %120)
  %122 = load i32, i32* %19, align 4
  ret i32 %122
}

declare dso_local i32 @IND_ACC_TABLE(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ksz_write16(%struct.ksz_device*, i32, i32) #1

declare dso_local i32 @ksz8795_valid_dyn_entry(%struct.ksz_device*, i32*) #1

declare dso_local i32 @ksz_read64(%struct.ksz_device*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
