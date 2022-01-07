; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_update_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocelot = type { i32, i32, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SYS_STAT_CFG = common dso_local global i32 0, align 4
@SYS_COUNT_RX_OCTETS = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocelot*)* @ocelot_update_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocelot_update_stats(%struct.ocelot* %0) #0 {
  %2 = alloca %struct.ocelot*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ocelot* %0, %struct.ocelot** %2, align 8
  %7 = load %struct.ocelot*, %struct.ocelot** %2, align 8
  %8 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %7, i32 0, i32 3
  %9 = call i32 @mutex_lock(i32* %8)
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %90, %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.ocelot*, %struct.ocelot** %2, align 8
  %13 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %93

16:                                               ; preds = %10
  %17 = load %struct.ocelot*, %struct.ocelot** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @SYS_STAT_CFG_STAT_VIEW(i32 %18)
  %20 = load i32, i32* @SYS_STAT_CFG, align 4
  %21 = call i32 @ocelot_write(%struct.ocelot* %17, i32 %19, i32 %20)
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %86, %16
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.ocelot*, %struct.ocelot** %2, align 8
  %25 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %89

28:                                               ; preds = %22
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.ocelot*, %struct.ocelot** %2, align 8
  %31 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %29, %32
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %33, %34
  store i32 %35, i32* %6, align 4
  %36 = load %struct.ocelot*, %struct.ocelot** %2, align 8
  %37 = load i32, i32* @SYS_COUNT_RX_OCTETS, align 4
  %38 = load %struct.ocelot*, %struct.ocelot** %2, align 8
  %39 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %38, i32 0, i32 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ocelot_read_rix(%struct.ocelot* %36, i32 %37, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.ocelot*, %struct.ocelot** %2, align 8
  %49 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @U32_MAX, align 4
  %56 = and i32 %54, %55
  %57 = icmp slt i32 %47, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %28
  %59 = load %struct.ocelot*, %struct.ocelot** %2, align 8
  %60 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, undef
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %58, %28
  %68 = load %struct.ocelot*, %struct.ocelot** %2, align 8
  %69 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @U32_MAX, align 4
  %76 = xor i32 %75, -1
  %77 = and i32 %74, %76
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %77, %78
  %80 = load %struct.ocelot*, %struct.ocelot** %2, align 8
  %81 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %79, i32* %85, align 4
  br label %86

86:                                               ; preds = %67
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %4, align 4
  br label %22

89:                                               ; preds = %22
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %3, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %3, align 4
  br label %10

93:                                               ; preds = %10
  %94 = load %struct.ocelot*, %struct.ocelot** %2, align 8
  %95 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %94, i32 0, i32 3
  %96 = call i32 @mutex_unlock(i32* %95)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ocelot_write(%struct.ocelot*, i32, i32) #1

declare dso_local i32 @SYS_STAT_CFG_STAT_VIEW(i32) #1

declare dso_local i32 @ocelot_read_rix(%struct.ocelot*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
