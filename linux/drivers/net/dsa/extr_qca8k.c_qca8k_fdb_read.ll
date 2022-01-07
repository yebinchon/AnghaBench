; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_qca8k.c_qca8k_fdb_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_qca8k.c_qca8k_fdb_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qca8k_priv = type { i32 }
%struct.qca8k_fdb = type { i32, i32, i32, i32* }

@QCA8K_REG_ATU_DATA0 = common dso_local global i64 0, align 8
@QCA8K_ATU_VID_S = common dso_local global i32 0, align 4
@QCA8K_ATU_VID_M = common dso_local global i32 0, align 4
@QCA8K_ATU_STATUS_M = common dso_local global i32 0, align 4
@QCA8K_ATU_PORT_S = common dso_local global i32 0, align 4
@QCA8K_ATU_PORT_M = common dso_local global i32 0, align 4
@QCA8K_ATU_ADDR0_S = common dso_local global i32 0, align 4
@QCA8K_ATU_ADDR2_S = common dso_local global i32 0, align 4
@QCA8K_ATU_ADDR3_S = common dso_local global i32 0, align 4
@QCA8K_ATU_ADDR4_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qca8k_priv*, %struct.qca8k_fdb*)* @qca8k_fdb_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qca8k_fdb_read(%struct.qca8k_priv* %0, %struct.qca8k_fdb* %1) #0 {
  %3 = alloca %struct.qca8k_priv*, align 8
  %4 = alloca %struct.qca8k_fdb*, align 8
  %5 = alloca [4 x i32], align 16
  %6 = alloca i32, align 4
  store %struct.qca8k_priv* %0, %struct.qca8k_priv** %3, align 8
  store %struct.qca8k_fdb* %1, %struct.qca8k_fdb** %4, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %21, %2
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 4
  br i1 %9, label %10, label %24

10:                                               ; preds = %7
  %11 = load %struct.qca8k_priv*, %struct.qca8k_priv** %3, align 8
  %12 = load i64, i64* @QCA8K_REG_ATU_DATA0, align 8
  %13 = load i32, i32* %6, align 4
  %14 = mul nsw i32 %13, 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %12, %15
  %17 = call i32 @qca8k_read(%struct.qca8k_priv* %11, i64 %16)
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %19
  store i32 %17, i32* %20, align 4
  br label %21

21:                                               ; preds = %10
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %6, align 4
  br label %7

24:                                               ; preds = %7
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @QCA8K_ATU_VID_S, align 4
  %28 = ashr i32 %26, %27
  %29 = load i32, i32* @QCA8K_ATU_VID_M, align 4
  %30 = and i32 %28, %29
  %31 = load %struct.qca8k_fdb*, %struct.qca8k_fdb** %4, align 8
  %32 = getelementptr inbounds %struct.qca8k_fdb, %struct.qca8k_fdb* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @QCA8K_ATU_STATUS_M, align 4
  %36 = and i32 %34, %35
  %37 = load %struct.qca8k_fdb*, %struct.qca8k_fdb** %4, align 8
  %38 = getelementptr inbounds %struct.qca8k_fdb, %struct.qca8k_fdb* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @QCA8K_ATU_PORT_S, align 4
  %42 = ashr i32 %40, %41
  %43 = load i32, i32* @QCA8K_ATU_PORT_M, align 4
  %44 = and i32 %42, %43
  %45 = load %struct.qca8k_fdb*, %struct.qca8k_fdb** %4, align 8
  %46 = getelementptr inbounds %struct.qca8k_fdb, %struct.qca8k_fdb* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @QCA8K_ATU_ADDR0_S, align 4
  %50 = ashr i32 %48, %49
  %51 = and i32 %50, 255
  %52 = load %struct.qca8k_fdb*, %struct.qca8k_fdb** %4, align 8
  %53 = getelementptr inbounds %struct.qca8k_fdb, %struct.qca8k_fdb* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 %51, i32* %55, align 4
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 255
  %59 = load %struct.qca8k_fdb*, %struct.qca8k_fdb** %4, align 8
  %60 = getelementptr inbounds %struct.qca8k_fdb, %struct.qca8k_fdb* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 %58, i32* %62, align 4
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %64 = load i32, i32* %63, align 16
  %65 = load i32, i32* @QCA8K_ATU_ADDR2_S, align 4
  %66 = ashr i32 %64, %65
  %67 = and i32 %66, 255
  %68 = load %struct.qca8k_fdb*, %struct.qca8k_fdb** %4, align 8
  %69 = getelementptr inbounds %struct.qca8k_fdb, %struct.qca8k_fdb* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  store i32 %67, i32* %71, align 4
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %73 = load i32, i32* %72, align 16
  %74 = load i32, i32* @QCA8K_ATU_ADDR3_S, align 4
  %75 = ashr i32 %73, %74
  %76 = and i32 %75, 255
  %77 = load %struct.qca8k_fdb*, %struct.qca8k_fdb** %4, align 8
  %78 = getelementptr inbounds %struct.qca8k_fdb, %struct.qca8k_fdb* %77, i32 0, i32 3
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 3
  store i32 %76, i32* %80, align 4
  %81 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %82 = load i32, i32* %81, align 16
  %83 = load i32, i32* @QCA8K_ATU_ADDR4_S, align 4
  %84 = ashr i32 %82, %83
  %85 = and i32 %84, 255
  %86 = load %struct.qca8k_fdb*, %struct.qca8k_fdb** %4, align 8
  %87 = getelementptr inbounds %struct.qca8k_fdb, %struct.qca8k_fdb* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 4
  store i32 %85, i32* %89, align 4
  %90 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %91 = load i32, i32* %90, align 16
  %92 = and i32 %91, 255
  %93 = load %struct.qca8k_fdb*, %struct.qca8k_fdb** %4, align 8
  %94 = getelementptr inbounds %struct.qca8k_fdb, %struct.qca8k_fdb* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 5
  store i32 %92, i32* %96, align 4
  ret void
}

declare dso_local i32 @qca8k_read(%struct.qca8k_priv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
