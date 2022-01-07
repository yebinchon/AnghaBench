; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_clean_portres.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_clean_portres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_port = type { i32 }
%struct.ehea_port_res = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32, i64, i32 }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_5__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ehea_port*, %struct.ehea_port_res*)* @ehea_clean_portres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehea_clean_portres(%struct.ehea_port* %0, %struct.ehea_port_res* %1) #0 {
  %3 = alloca %struct.ehea_port*, align 8
  %4 = alloca %struct.ehea_port_res*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ehea_port* %0, %struct.ehea_port** %3, align 8
  store %struct.ehea_port_res* %1, %struct.ehea_port_res** %4, align 8
  %7 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %8 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %7, i32 0, i32 7
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %13 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %12, i32 0, i32 8
  %14 = call i32 @netif_napi_del(i32* %13)
  br label %15

15:                                               ; preds = %11, %2
  %16 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %17 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %16, i32 0, i32 7
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @ehea_destroy_qp(i64 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %141, label %22

22:                                               ; preds = %15
  %23 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %24 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @ehea_destroy_cq(i32 %25)
  %27 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %28 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ehea_destroy_cq(i32 %29)
  %31 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %32 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ehea_destroy_eq(i32 %33)
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %52, %22
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %38 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %36, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %35
  %43 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %44 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dev_kfree_skb(i32 %50)
  br label %52

52:                                               ; preds = %42
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %35

55:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %73, %55
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %59 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %57, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %56
  %64 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %65 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dev_kfree_skb(i32 %71)
  br label %73

73:                                               ; preds = %63
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %56

76:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %94, %76
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %80 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %78, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %77
  %85 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %86 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @dev_kfree_skb(i32 %92)
  br label %94

94:                                               ; preds = %84
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %6, align 4
  br label %77

97:                                               ; preds = %77
  store i32 0, i32* %6, align 4
  br label %98

98:                                               ; preds = %115, %97
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %101 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %99, %103
  br i1 %104, label %105, label %118

105:                                              ; preds = %98
  %106 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %107 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @dev_kfree_skb(i32 %113)
  br label %115

115:                                              ; preds = %105
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %6, align 4
  br label %98

118:                                              ; preds = %98
  %119 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %120 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @vfree(i32* %122)
  %124 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %125 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = call i32 @vfree(i32* %127)
  %129 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %130 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @vfree(i32* %132)
  %134 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %135 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = call i32 @vfree(i32* %137)
  %139 = load %struct.ehea_port_res*, %struct.ehea_port_res** %4, align 8
  %140 = call i32 @ehea_rem_smrs(%struct.ehea_port_res* %139)
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %118, %15
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @ehea_destroy_qp(i64) #1

declare dso_local i32 @ehea_destroy_cq(i32) #1

declare dso_local i32 @ehea_destroy_eq(i32) #1

declare dso_local i32 @dev_kfree_skb(i32) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @ehea_rem_smrs(%struct.ehea_port_res*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
