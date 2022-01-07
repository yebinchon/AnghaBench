; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_free_desc_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_free_desc_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_pdata = type { i32, i32, %struct.xgene_enet_desc_ring**, i64, %struct.xgene_enet_desc_ring**, %struct.TYPE_2__* }
%struct.xgene_enet_desc_ring = type { i8*, i8*, i8*, i8*, %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_enet_pdata*)* @xgene_enet_free_desc_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_enet_free_desc_rings(%struct.xgene_enet_pdata* %0) #0 {
  %2 = alloca %struct.xgene_enet_pdata*, align 8
  %3 = alloca %struct.xgene_enet_desc_ring*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.xgene_enet_desc_ring*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.xgene_enet_pdata* %0, %struct.xgene_enet_pdata** %2, align 8
  %8 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %9 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %8, i32 0, i32 5
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %67, %1
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %15 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %70

18:                                               ; preds = %12
  %19 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %20 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %19, i32 0, i32 4
  %21 = load %struct.xgene_enet_desc_ring**, %struct.xgene_enet_desc_ring*** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %21, i64 %23
  %25 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %24, align 8
  store %struct.xgene_enet_desc_ring* %25, %struct.xgene_enet_desc_ring** %5, align 8
  %26 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %5, align 8
  %27 = icmp ne %struct.xgene_enet_desc_ring* %26, null
  br i1 %27, label %28, label %66

28:                                               ; preds = %18
  %29 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %5, align 8
  %30 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %29, i32 0, i32 6
  %31 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %30, align 8
  %32 = icmp ne %struct.xgene_enet_desc_ring* %31, null
  br i1 %32, label %33, label %48

33:                                               ; preds = %28
  %34 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %5, align 8
  %35 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %34, i32 0, i32 6
  %36 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %35, align 8
  %37 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %5, align 8
  %43 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %42, i32 0, i32 6
  %44 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %43, align 8
  %45 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @devm_kfree(%struct.device* %41, i8* %46)
  br label %48

48:                                               ; preds = %40, %33, %28
  %49 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %5, align 8
  %50 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %49, i32 0, i32 6
  %51 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %50, align 8
  %52 = icmp ne %struct.xgene_enet_desc_ring* %51, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  %54 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %55 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %5, align 8
  %60 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %59, i32 0, i32 6
  %61 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %60, align 8
  %62 = call i32 @xgene_enet_free_desc_ring(%struct.xgene_enet_desc_ring* %61)
  br label %63

63:                                               ; preds = %58, %53, %48
  %64 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %5, align 8
  %65 = call i32 @xgene_enet_free_desc_ring(%struct.xgene_enet_desc_ring* %64)
  br label %66

66:                                               ; preds = %63, %18
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %12

70:                                               ; preds = %12
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %143, %70
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %74 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %146

77:                                               ; preds = %71
  %78 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %79 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %78, i32 0, i32 2
  %80 = load %struct.xgene_enet_desc_ring**, %struct.xgene_enet_desc_ring*** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %80, i64 %82
  %84 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %83, align 8
  store %struct.xgene_enet_desc_ring* %84, %struct.xgene_enet_desc_ring** %5, align 8
  %85 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %5, align 8
  %86 = icmp ne %struct.xgene_enet_desc_ring* %85, null
  br i1 %86, label %87, label %142

87:                                               ; preds = %77
  %88 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %5, align 8
  %89 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %88, i32 0, i32 5
  %90 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %89, align 8
  %91 = icmp ne %struct.xgene_enet_desc_ring* %90, null
  br i1 %91, label %92, label %112

92:                                               ; preds = %87
  %93 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %5, align 8
  %94 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %93, i32 0, i32 5
  %95 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %94, align 8
  %96 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %107

99:                                               ; preds = %92
  %100 = load %struct.device*, %struct.device** %4, align 8
  %101 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %5, align 8
  %102 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %101, i32 0, i32 5
  %103 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %102, align 8
  %104 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @devm_kfree(%struct.device* %100, i8* %105)
  br label %107

107:                                              ; preds = %99, %92
  %108 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %5, align 8
  %109 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %108, i32 0, i32 5
  %110 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %109, align 8
  %111 = call i32 @xgene_enet_free_desc_ring(%struct.xgene_enet_desc_ring* %110)
  br label %112

112:                                              ; preds = %107, %87
  %113 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %5, align 8
  %114 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %113, i32 0, i32 4
  %115 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %114, align 8
  store %struct.xgene_enet_desc_ring* %115, %struct.xgene_enet_desc_ring** %3, align 8
  %116 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %117 = icmp ne %struct.xgene_enet_desc_ring* %116, null
  br i1 %117, label %118, label %139

118:                                              ; preds = %112
  %119 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %120 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %119, i32 0, i32 3
  %121 = load i8*, i8** %120, align 8
  store i8* %121, i8** %6, align 8
  %122 = load i8*, i8** %6, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = load %struct.device*, %struct.device** %4, align 8
  %126 = load i8*, i8** %6, align 8
  %127 = call i32 @devm_kfree(%struct.device* %125, i8* %126)
  br label %128

128:                                              ; preds = %124, %118
  %129 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %3, align 8
  %130 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %129, i32 0, i32 2
  %131 = load i8*, i8** %130, align 8
  store i8* %131, i8** %6, align 8
  %132 = load i8*, i8** %6, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %138

134:                                              ; preds = %128
  %135 = load %struct.device*, %struct.device** %4, align 8
  %136 = load i8*, i8** %6, align 8
  %137 = call i32 @devm_kfree(%struct.device* %135, i8* %136)
  br label %138

138:                                              ; preds = %134, %128
  br label %139

139:                                              ; preds = %138, %112
  %140 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %5, align 8
  %141 = call i32 @xgene_enet_free_desc_ring(%struct.xgene_enet_desc_ring* %140)
  br label %142

142:                                              ; preds = %139, %77
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %7, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %7, align 4
  br label %71

146:                                              ; preds = %71
  ret void
}

declare dso_local i32 @devm_kfree(%struct.device*, i8*) #1

declare dso_local i32 @xgene_enet_free_desc_ring(%struct.xgene_enet_desc_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
