; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_core.c_emac_rx_sg_append.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_core.c_emac_rx_sg_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_instance = type { i64, %struct.TYPE_10__*, %struct.TYPE_9__**, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@NET_IP_ALIGN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.emac_instance*, i32)* @emac_rx_sg_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_rx_sg_append(%struct.emac_instance* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.emac_instance*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.emac_instance* %0, %struct.emac_instance** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %9 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %8, i32 0, i32 1
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %11 = icmp ne %struct.TYPE_10__* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i64 @likely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %80

15:                                               ; preds = %2
  %16 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %17 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %16, i32 0, i32 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  %24 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %25 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %24, i32 0, i32 1
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %28, %29
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* @NET_IP_ALIGN, align 8
  %34 = add nsw i64 %32, %33
  %35 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %36 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %34, %37
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %15
  %43 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %44 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  %48 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %49 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %48, i32 0, i32 1
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = call i32 @dev_kfree_skb(%struct.TYPE_10__* %50)
  %52 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %53 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %52, i32 0, i32 1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %53, align 8
  br label %79

54:                                               ; preds = %15
  %55 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %56 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %55, i32 0, i32 1
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = call i32 @skb_tail_pointer(%struct.TYPE_10__* %57)
  %59 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %60 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %59, i32 0, i32 2
  %61 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %61, i64 %63
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @memcpy(i32 %58, i32 %67, i32 %68)
  %70 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %71 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %70, i32 0, i32 1
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @skb_put(%struct.TYPE_10__* %72, i32 %73)
  %75 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @emac_recycle_rx_skb(%struct.emac_instance* %75, i32 %76, i32 %77)
  store i32 0, i32* %3, align 4
  br label %84

79:                                               ; preds = %42
  br label %80

80:                                               ; preds = %79, %2
  %81 = load %struct.emac_instance*, %struct.emac_instance** %4, align 8
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @emac_recycle_rx_skb(%struct.emac_instance* %81, i32 %82, i32 0)
  store i32 -1, i32* %3, align 4
  br label %84

84:                                               ; preds = %80, %54
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.TYPE_10__*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @skb_tail_pointer(%struct.TYPE_10__*) #1

declare dso_local i32 @skb_put(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @emac_recycle_rx_skb(%struct.emac_instance*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
