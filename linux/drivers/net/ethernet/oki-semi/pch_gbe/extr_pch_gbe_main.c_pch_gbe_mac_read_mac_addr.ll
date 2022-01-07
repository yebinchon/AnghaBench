; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_mac_read_mac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_mac_read_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_hw = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i8** }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.pch_gbe_adapter = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"hw->mac.addr : %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pch_gbe_hw*)* @pch_gbe_mac_read_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pch_gbe_mac_read_mac_addr(%struct.pch_gbe_hw* %0) #0 {
  %2 = alloca %struct.pch_gbe_hw*, align 8
  %3 = alloca %struct.pch_gbe_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pch_gbe_hw* %0, %struct.pch_gbe_hw** %2, align 8
  %6 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %7 = call %struct.pch_gbe_adapter* @pch_gbe_hw_to_adapter(%struct.pch_gbe_hw* %6)
  store %struct.pch_gbe_adapter* %7, %struct.pch_gbe_adapter** %3, align 8
  %8 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %9 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = call i32 @ioread32(i32* %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %17 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i32 @ioread32(i32* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, 255
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %29 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i8**, i8*** %30, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  store i8* %27, i8** %32, align 8
  %33 = load i32, i32* %4, align 4
  %34 = ashr i32 %33, 8
  %35 = and i32 %34, 255
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i8*
  %38 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %39 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i8**, i8*** %40, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 1
  store i8* %37, i8** %42, align 8
  %43 = load i32, i32* %4, align 4
  %44 = ashr i32 %43, 16
  %45 = and i32 %44, 255
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %49 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i8**, i8*** %50, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 2
  store i8* %47, i8** %52, align 8
  %53 = load i32, i32* %4, align 4
  %54 = ashr i32 %53, 24
  %55 = and i32 %54, 255
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i8*
  %58 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %59 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i8**, i8*** %60, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 3
  store i8* %57, i8** %62, align 8
  %63 = load i32, i32* %5, align 4
  %64 = and i32 %63, 255
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i8*
  %67 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %68 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i8**, i8*** %69, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 4
  store i8* %66, i8** %71, align 8
  %72 = load i32, i32* %5, align 4
  %73 = ashr i32 %72, 8
  %74 = and i32 %73, 255
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  %77 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %78 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i8**, i8*** %79, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 5
  store i8* %76, i8** %81, align 8
  %82 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %83 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %86 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i8**, i8*** %87, align 8
  %89 = call i32 @netdev_dbg(i32 %84, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %88)
  ret i32 0
}

declare dso_local %struct.pch_gbe_adapter* @pch_gbe_hw_to_adapter(%struct.pch_gbe_hw*) #1

declare dso_local i32 @ioread32(i32*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
