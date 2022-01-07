; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_add_veb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_add_veb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_veb = type { i32, i32, i32, i32, i32, %struct.i40e_pf* }
%struct.i40e_pf = type { i32, %struct.TYPE_10__, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.i40e_vsi = type { i32, i32, i32, i32 }

@I40E_FLAG_VEB_STATS_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"couldn't add VEB, err %s aq_err %s\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"couldn't get VEB statistics idx, err %s aq_err %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"couldn't get VEB bw info, err %s aq_err %s\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@I40E_VSI_FLAG_VEB_OWNER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_veb*, %struct.i40e_vsi*)* @i40e_add_veb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_add_veb(%struct.i40e_veb* %0, %struct.i40e_vsi* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_veb*, align 8
  %5 = alloca %struct.i40e_vsi*, align 8
  %6 = alloca %struct.i40e_pf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i40e_veb* %0, %struct.i40e_veb** %4, align 8
  store %struct.i40e_vsi* %1, %struct.i40e_vsi** %5, align 8
  %9 = load %struct.i40e_veb*, %struct.i40e_veb** %4, align 8
  %10 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %9, i32 0, i32 5
  %11 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  store %struct.i40e_pf* %11, %struct.i40e_pf** %6, align 8
  %12 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %13 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @I40E_FLAG_VEB_STATS_ENABLED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %7, align 4
  %21 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %22 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %21, i32 0, i32 1
  %23 = load %struct.i40e_veb*, %struct.i40e_veb** %4, align 8
  %24 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %27 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.i40e_veb*, %struct.i40e_veb** %4, align 8
  %30 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.i40e_veb*, %struct.i40e_veb** %4, align 8
  %33 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %32, i32 0, i32 1
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @i40e_aq_add_veb(%struct.TYPE_10__* %22, i32 %25, i32 %28, i32 %31, i32 0, i32* %33, i32 %34, i32* null)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %2
  %39 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %40 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %39, i32 0, i32 2
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %44 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %43, i32 0, i32 1
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @i40e_stat_str(%struct.TYPE_10__* %44, i32 %45)
  %47 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %48 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %47, i32 0, i32 1
  %49 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %50 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @i40e_aq_str(%struct.TYPE_10__* %48, i32 %53)
  %55 = call i32 @dev_info(i32* %42, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %54)
  %56 = load i32, i32* @EPERM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %136

58:                                               ; preds = %2
  %59 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %60 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %59, i32 0, i32 1
  %61 = load %struct.i40e_veb*, %struct.i40e_veb** %4, align 8
  %62 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.i40e_veb*, %struct.i40e_veb** %4, align 8
  %65 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %64, i32 0, i32 2
  %66 = call i32 @i40e_aq_get_veb_parameters(%struct.TYPE_10__* %60, i32 %63, i32* null, i32* null, i32* %65, i32* null, i32* null, i32* null)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %89

69:                                               ; preds = %58
  %70 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %71 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %70, i32 0, i32 2
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %75 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %74, i32 0, i32 1
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @i40e_stat_str(%struct.TYPE_10__* %75, i32 %76)
  %78 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %79 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %78, i32 0, i32 1
  %80 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %81 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @i40e_aq_str(%struct.TYPE_10__* %79, i32 %84)
  %86 = call i32 @dev_info(i32* %73, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %85)
  %87 = load i32, i32* @EPERM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %136

89:                                               ; preds = %58
  %90 = load %struct.i40e_veb*, %struct.i40e_veb** %4, align 8
  %91 = call i32 @i40e_veb_get_bw_info(%struct.i40e_veb* %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %120

94:                                               ; preds = %89
  %95 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %96 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %95, i32 0, i32 2
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %100 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %99, i32 0, i32 1
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @i40e_stat_str(%struct.TYPE_10__* %100, i32 %101)
  %103 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %104 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %103, i32 0, i32 1
  %105 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %106 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @i40e_aq_str(%struct.TYPE_10__* %104, i32 %109)
  %111 = call i32 @dev_info(i32* %98, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %102, i32 %110)
  %112 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %113 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %112, i32 0, i32 1
  %114 = load %struct.i40e_veb*, %struct.i40e_veb** %4, align 8
  %115 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @i40e_aq_delete_element(%struct.TYPE_10__* %113, i32 %116, i32* null)
  %118 = load i32, i32* @ENOENT, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  br label %136

120:                                              ; preds = %89
  %121 = load %struct.i40e_veb*, %struct.i40e_veb** %4, align 8
  %122 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %125 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 4
  %126 = load %struct.i40e_veb*, %struct.i40e_veb** %4, align 8
  %127 = getelementptr inbounds %struct.i40e_veb, %struct.i40e_veb* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %130 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* @I40E_VSI_FLAG_VEB_OWNER, align 4
  %132 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %133 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 4
  store i32 0, i32* %3, align 4
  br label %136

136:                                              ; preds = %120, %94, %69, %38
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @i40e_aq_add_veb(%struct.TYPE_10__*, i32, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @i40e_stat_str(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @i40e_aq_str(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @i40e_aq_get_veb_parameters(%struct.TYPE_10__*, i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @i40e_veb_get_bw_info(%struct.i40e_veb*) #1

declare dso_local i32 @i40e_aq_delete_element(%struct.TYPE_10__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
