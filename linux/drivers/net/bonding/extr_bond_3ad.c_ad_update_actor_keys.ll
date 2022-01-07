; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c_ad_update_actor_keys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c_ad_update_actor_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@AD_SPEED_KEY_MASKS = common dso_local global i32 0, align 4
@AD_DUPLEX_KEY_MASKS = common dso_local global i32 0, align 4
@AD_PORT_LACP_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"speed changed to 0 on port %d\0A\00", align 1
@AD_PORT_BEGIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port*, i32)* @ad_update_actor_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad_update_actor_keys(%struct.port* %0, i32 %1) #0 {
  %3 = alloca %struct.port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.port* %0, %struct.port** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.port*, %struct.port** %3, align 8
  %10 = getelementptr inbounds %struct.port, %struct.port* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @AD_SPEED_KEY_MASKS, align 4
  %13 = load i32, i32* @AD_DUPLEX_KEY_MASKS, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = load %struct.port*, %struct.port** %3, align 8
  %17 = getelementptr inbounds %struct.port, %struct.port* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %39, label %22

22:                                               ; preds = %2
  %23 = load %struct.port*, %struct.port** %3, align 8
  %24 = call i32 @__get_link_speed(%struct.port* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @AD_SPEED_KEY_MASKS, align 4
  %27 = and i32 %25, %26
  %28 = ashr i32 %27, 1
  store i32 %28, i32* %6, align 4
  %29 = load %struct.port*, %struct.port** %3, align 8
  %30 = call i32 @__get_duplex(%struct.port* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %7, align 4
  %32 = shl i32 %31, 1
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.port*, %struct.port** %3, align 8
  %36 = getelementptr inbounds %struct.port, %struct.port* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %22, %2
  %40 = load %struct.port*, %struct.port** %3, align 8
  %41 = getelementptr inbounds %struct.port, %struct.port* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.port*, %struct.port** %3, align 8
  %44 = getelementptr inbounds %struct.port, %struct.port* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.port*, %struct.port** %3, align 8
  %47 = getelementptr inbounds %struct.port, %struct.port* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %45, %48
  br i1 %49, label %50, label %105

50:                                               ; preds = %39
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i32, i32* @AD_PORT_LACP_ENABLED, align 4
  %55 = load %struct.port*, %struct.port** %3, align 8
  %56 = getelementptr inbounds %struct.port, %struct.port* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %66

59:                                               ; preds = %50
  %60 = load i32, i32* @AD_PORT_LACP_ENABLED, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.port*, %struct.port** %3, align 8
  %63 = getelementptr inbounds %struct.port, %struct.port* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %59, %53
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %104, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %89, label %72

72:                                               ; preds = %69
  %73 = load %struct.port*, %struct.port** %3, align 8
  %74 = getelementptr inbounds %struct.port, %struct.port* %73, i32 0, i32 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.port*, %struct.port** %3, align 8
  %81 = getelementptr inbounds %struct.port, %struct.port* %80, i32 0, i32 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.port*, %struct.port** %3, align 8
  %86 = getelementptr inbounds %struct.port, %struct.port* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @slave_err(i32 %79, i32 %84, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %87)
  br label %103

89:                                               ; preds = %69
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %89
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %92
  %97 = load i32, i32* @AD_PORT_BEGIN, align 4
  %98 = load %struct.port*, %struct.port** %3, align 8
  %99 = getelementptr inbounds %struct.port, %struct.port* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 8
  br label %102

102:                                              ; preds = %96, %92, %89
  br label %103

103:                                              ; preds = %102, %72
  br label %104

104:                                              ; preds = %103, %66
  br label %105

105:                                              ; preds = %104, %39
  ret void
}

declare dso_local i32 @__get_link_speed(%struct.port*) #1

declare dso_local i32 @__get_duplex(%struct.port*) #1

declare dso_local i32 @slave_err(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
