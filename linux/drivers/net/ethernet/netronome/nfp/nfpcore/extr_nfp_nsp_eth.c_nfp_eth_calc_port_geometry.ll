; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nsp_eth.c_nfp_eth_calc_port_geometry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nsp_eth.c_nfp_eth_calc_port_geometry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_cpp = type { i32 }
%struct.nfp_eth_table = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Port %d subport %d is a duplicate\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_cpp*, %struct.nfp_eth_table*)* @nfp_eth_calc_port_geometry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_eth_calc_port_geometry(%struct.nfp_cpp* %0, %struct.nfp_eth_table* %1) #0 {
  %3 = alloca %struct.nfp_cpp*, align 8
  %4 = alloca %struct.nfp_eth_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nfp_cpp* %0, %struct.nfp_cpp** %3, align 8
  store %struct.nfp_eth_table* %1, %struct.nfp_eth_table** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %126, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.nfp_eth_table*, %struct.nfp_eth_table** %4, align 8
  %10 = getelementptr inbounds %struct.nfp_eth_table, %struct.nfp_eth_table* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %13, label %129

13:                                               ; preds = %7
  %14 = load %struct.nfp_eth_table*, %struct.nfp_eth_table** %4, align 8
  %15 = getelementptr inbounds %struct.nfp_eth_table, %struct.nfp_eth_table* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.nfp_eth_table*, %struct.nfp_eth_table** %4, align 8
  %18 = getelementptr inbounds %struct.nfp_eth_table, %struct.nfp_eth_table* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @max(i32 %16, i32 %24)
  %26 = load %struct.nfp_eth_table*, %struct.nfp_eth_table** %4, align 8
  %27 = getelementptr inbounds %struct.nfp_eth_table, %struct.nfp_eth_table* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %122, %13
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.nfp_eth_table*, %struct.nfp_eth_table** %4, align 8
  %31 = getelementptr inbounds %struct.nfp_eth_table, %struct.nfp_eth_table* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %125

34:                                               ; preds = %28
  %35 = load %struct.nfp_eth_table*, %struct.nfp_eth_table** %4, align 8
  %36 = getelementptr inbounds %struct.nfp_eth_table, %struct.nfp_eth_table* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.nfp_eth_table*, %struct.nfp_eth_table** %4, align 8
  %44 = getelementptr inbounds %struct.nfp_eth_table, %struct.nfp_eth_table* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %42, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %34
  br label %122

53:                                               ; preds = %34
  %54 = load %struct.nfp_eth_table*, %struct.nfp_eth_table** %4, align 8
  %55 = getelementptr inbounds %struct.nfp_eth_table, %struct.nfp_eth_table* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.nfp_eth_table*, %struct.nfp_eth_table** %4, align 8
  %63 = getelementptr inbounds %struct.nfp_eth_table, %struct.nfp_eth_table* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %61
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %68, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %53
  br label %122

77:                                               ; preds = %53
  %78 = load %struct.nfp_eth_table*, %struct.nfp_eth_table** %4, align 8
  %79 = getelementptr inbounds %struct.nfp_eth_table, %struct.nfp_eth_table* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.nfp_eth_table*, %struct.nfp_eth_table** %4, align 8
  %87 = getelementptr inbounds %struct.nfp_eth_table, %struct.nfp_eth_table* %86, i32 0, i32 1
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %85, %93
  br i1 %94, label %95, label %114

95:                                               ; preds = %77
  %96 = load %struct.nfp_cpp*, %struct.nfp_cpp** %3, align 8
  %97 = load %struct.nfp_eth_table*, %struct.nfp_eth_table** %4, align 8
  %98 = getelementptr inbounds %struct.nfp_eth_table, %struct.nfp_eth_table* %97, i32 0, i32 1
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.nfp_eth_table*, %struct.nfp_eth_table** %4, align 8
  %106 = getelementptr inbounds %struct.nfp_eth_table, %struct.nfp_eth_table* %105, i32 0, i32 1
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @nfp_warn(%struct.nfp_cpp* %96, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %104, i64 %112)
  br label %114

114:                                              ; preds = %95, %77
  %115 = load %struct.nfp_eth_table*, %struct.nfp_eth_table** %4, align 8
  %116 = getelementptr inbounds %struct.nfp_eth_table, %struct.nfp_eth_table* %115, i32 0, i32 1
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 2
  store i32 1, i32* %121, align 8
  br label %122

122:                                              ; preds = %114, %76, %52
  %123 = load i32, i32* %6, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %6, align 4
  br label %28

125:                                              ; preds = %28
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %5, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %5, align 4
  br label %7

129:                                              ; preds = %7
  ret void
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @nfp_warn(%struct.nfp_cpp*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
