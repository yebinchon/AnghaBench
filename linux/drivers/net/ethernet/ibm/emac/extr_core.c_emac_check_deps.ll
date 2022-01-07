; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_core.c_emac_check_deps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_core.c_emac_check_deps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_instance = type { %struct.device_node** }
%struct.device_node = type { i32 }
%struct.emac_depentry = type { i64, i32*, i32*, i32* }

@EMAC_DEP_COUNT = common dso_local global i32 0, align 4
@EMAC_DEP_PREV_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.emac_instance*, %struct.emac_depentry*)* @emac_check_deps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_check_deps(%struct.emac_instance* %0, %struct.emac_depentry* %1) #0 {
  %3 = alloca %struct.emac_instance*, align 8
  %4 = alloca %struct.emac_depentry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.device_node*, align 8
  store %struct.emac_instance* %0, %struct.emac_instance** %3, align 8
  store %struct.emac_depentry* %1, %struct.emac_depentry** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %153, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @EMAC_DEP_COUNT, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %156

12:                                               ; preds = %8
  %13 = load %struct.emac_depentry*, %struct.emac_depentry** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %13, i64 %15
  %17 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %6, align 4
  br label %153

23:                                               ; preds = %12
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @EMAC_DEP_PREV_IDX, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %60

27:                                               ; preds = %23
  %28 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %29 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %28, i32 0, i32 0
  %30 = load %struct.device_node**, %struct.device_node*** %29, align 8
  %31 = getelementptr inbounds %struct.device_node*, %struct.device_node** %30, i64 -1
  %32 = load %struct.device_node*, %struct.device_node** %31, align 8
  store %struct.device_node* %32, %struct.device_node** %7, align 8
  %33 = load %struct.device_node*, %struct.device_node** %7, align 8
  %34 = icmp eq %struct.device_node* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %27
  %36 = load %struct.emac_depentry*, %struct.emac_depentry** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %36, i64 %38
  %40 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %153

43:                                               ; preds = %27
  %44 = load %struct.emac_depentry*, %struct.emac_depentry** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %44, i64 %46
  %48 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %43
  %52 = load %struct.device_node*, %struct.device_node** %7, align 8
  %53 = call i32* @of_node_get(%struct.device_node* %52)
  %54 = load %struct.emac_depentry*, %struct.emac_depentry** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %54, i64 %56
  %58 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %57, i32 0, i32 3
  store i32* %53, i32** %58, align 8
  br label %59

59:                                               ; preds = %51, %43
  br label %60

60:                                               ; preds = %59, %23
  %61 = load %struct.emac_depentry*, %struct.emac_depentry** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %61, i64 %63
  %65 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %81

68:                                               ; preds = %60
  %69 = load %struct.emac_depentry*, %struct.emac_depentry** %4, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %69, i64 %71
  %73 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32* @of_find_node_by_phandle(i64 %74)
  %76 = load %struct.emac_depentry*, %struct.emac_depentry** %4, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %76, i64 %78
  %80 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %79, i32 0, i32 3
  store i32* %75, i32** %80, align 8
  br label %81

81:                                               ; preds = %68, %60
  %82 = load %struct.emac_depentry*, %struct.emac_depentry** %4, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %82, i64 %84
  %86 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %153

90:                                               ; preds = %81
  %91 = load %struct.emac_depentry*, %struct.emac_depentry** %4, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %91, i64 %93
  %95 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %111

98:                                               ; preds = %90
  %99 = load %struct.emac_depentry*, %struct.emac_depentry** %4, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %99, i64 %101
  %103 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %102, i32 0, i32 3
  %104 = load i32*, i32** %103, align 8
  %105 = call i32* @of_find_device_by_node(i32* %104)
  %106 = load %struct.emac_depentry*, %struct.emac_depentry** %4, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %106, i64 %108
  %110 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %109, i32 0, i32 2
  store i32* %105, i32** %110, align 8
  br label %111

111:                                              ; preds = %98, %90
  %112 = load %struct.emac_depentry*, %struct.emac_depentry** %4, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %112, i64 %114
  %116 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  br label %153

120:                                              ; preds = %111
  %121 = load %struct.emac_depentry*, %struct.emac_depentry** %4, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %121, i64 %123
  %125 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = icmp eq i32* %126, null
  br i1 %127, label %128, label %141

128:                                              ; preds = %120
  %129 = load %struct.emac_depentry*, %struct.emac_depentry** %4, align 8
  %130 = load i32, i32* %5, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %129, i64 %131
  %133 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = call i32* @platform_get_drvdata(i32* %134)
  %136 = load %struct.emac_depentry*, %struct.emac_depentry** %4, align 8
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %136, i64 %138
  %140 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %139, i32 0, i32 1
  store i32* %135, i32** %140, align 8
  br label %141

141:                                              ; preds = %128, %120
  %142 = load %struct.emac_depentry*, %struct.emac_depentry** %4, align 8
  %143 = load i32, i32* %5, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %142, i64 %144
  %146 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %141
  %150 = load i32, i32* %6, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %6, align 4
  br label %152

152:                                              ; preds = %149, %141
  br label %153

153:                                              ; preds = %152, %119, %89, %35, %20
  %154 = load i32, i32* %5, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %5, align 4
  br label %8

156:                                              ; preds = %8
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* @EMAC_DEP_COUNT, align 4
  %159 = icmp eq i32 %157, %158
  %160 = zext i1 %159 to i32
  ret i32 %160
}

declare dso_local i32* @of_node_get(%struct.device_node*) #1

declare dso_local i32* @of_find_node_by_phandle(i64) #1

declare dso_local i32* @of_find_device_by_node(i32*) #1

declare dso_local i32* @platform_get_drvdata(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
