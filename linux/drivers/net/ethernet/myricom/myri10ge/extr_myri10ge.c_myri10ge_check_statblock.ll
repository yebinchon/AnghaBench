; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_check_statblock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_check_statblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myri10ge_priv = type { i32, i8*, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mcp_irq_data* }
%struct.mcp_irq_data = type { i64, i32, i32, i32 }

@MXGEFW_LINK_UP = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"link up\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"link %s\0A\00", align 1
@MXGEFW_LINK_MYRINET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"mismatch (Myrinet detected)\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"RDMA timed out! %d tags left\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.myri10ge_priv*)* @myri10ge_check_statblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @myri10ge_check_statblock(%struct.myri10ge_priv* %0) #0 {
  %2 = alloca %struct.myri10ge_priv*, align 8
  %3 = alloca %struct.mcp_irq_data*, align 8
  %4 = alloca i32, align 4
  store %struct.myri10ge_priv* %0, %struct.myri10ge_priv** %2, align 8
  %5 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %6 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %5, i32 0, i32 6
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.mcp_irq_data*, %struct.mcp_irq_data** %9, align 8
  store %struct.mcp_irq_data* %10, %struct.mcp_irq_data** %3, align 8
  %11 = load %struct.mcp_irq_data*, %struct.mcp_irq_data** %3, align 8
  %12 = getelementptr inbounds %struct.mcp_irq_data, %struct.mcp_irq_data* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %114

16:                                               ; preds = %1
  %17 = load %struct.mcp_irq_data*, %struct.mcp_irq_data** %3, align 8
  %18 = getelementptr inbounds %struct.mcp_irq_data, %struct.mcp_irq_data* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @ntohl(i32 %19)
  %21 = ptrtoint i8* %20 to i32
  store i32 %21, i32* %4, align 4
  %22 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %23 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %72

27:                                               ; preds = %16
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %30 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %32 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @MXGEFW_LINK_UP, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %27
  %37 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %38 = load i32, i32* @link, align 4
  %39 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %40 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (%struct.myri10ge_priv*, i32, i32, i8*, ...) @netif_info(%struct.myri10ge_priv* %37, i32 %38, i32 %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %44 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @netif_carrier_on(i32 %45)
  %47 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %48 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  br label %71

51:                                               ; preds = %27
  %52 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %53 = load i32, i32* @link, align 4
  %54 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %55 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @MXGEFW_LINK_MYRINET, align 4
  %59 = icmp eq i32 %57, %58
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %62 = call i32 (%struct.myri10ge_priv*, i32, i32, i8*, ...) @netif_info(%struct.myri10ge_priv* %52, i32 %53, i32 %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  %63 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %64 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @netif_carrier_off(i32 %65)
  %67 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %68 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %51, %36
  br label %72

72:                                               ; preds = %71, %16
  %73 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %74 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.mcp_irq_data*, %struct.mcp_irq_data** %3, align 8
  %77 = getelementptr inbounds %struct.mcp_irq_data, %struct.mcp_irq_data* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i8* @ntohl(i32 %78)
  %80 = icmp ne i8* %75, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %72
  %82 = load %struct.mcp_irq_data*, %struct.mcp_irq_data** %3, align 8
  %83 = getelementptr inbounds %struct.mcp_irq_data, %struct.mcp_irq_data* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i8* @ntohl(i32 %84)
  %86 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %87 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  %88 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %89 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %92 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @netdev_warn(i32 %90, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %93)
  br label %95

95:                                               ; preds = %81, %72
  %96 = load %struct.mcp_irq_data*, %struct.mcp_irq_data** %3, align 8
  %97 = getelementptr inbounds %struct.mcp_irq_data, %struct.mcp_irq_data* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %100 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %98
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %100, align 4
  %105 = load %struct.mcp_irq_data*, %struct.mcp_irq_data** %3, align 8
  %106 = getelementptr inbounds %struct.mcp_irq_data, %struct.mcp_irq_data* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %95
  %110 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %2, align 8
  %111 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %110, i32 0, i32 2
  %112 = call i32 @wake_up(i32* %111)
  br label %113

113:                                              ; preds = %109, %95
  br label %114

114:                                              ; preds = %113, %1
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @netif_info(%struct.myri10ge_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @netdev_warn(i32, i8*, i8*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
