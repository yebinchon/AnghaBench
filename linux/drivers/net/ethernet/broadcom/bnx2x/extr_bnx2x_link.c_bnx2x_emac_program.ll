; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_emac_program.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_emac_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { i32, %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i32, i64 }

@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"setting link speed & duplex\0A\00", align 1
@GRCBASE_EMAC0 = common dso_local global i64 0, align 8
@EMAC_REG_EMAC_MODE = common dso_local global i64 0, align 8
@EMAC_MODE_25G_MODE = common dso_local global i32 0, align 4
@EMAC_MODE_PORT_MII_10M = common dso_local global i32 0, align 4
@EMAC_MODE_HALF_DUPLEX = common dso_local global i32 0, align 4
@EMAC_MODE_PORT_MII = common dso_local global i32 0, align 4
@EMAC_MODE_PORT_GMII = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Invalid line_speed 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i64 0, align 8
@LED_MODE_OPER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.link_params*, %struct.link_vars*)* @bnx2x_emac_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_emac_program(%struct.link_params* %0, %struct.link_vars* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.link_params*, align 8
  %5 = alloca %struct.link_vars*, align 8
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.link_params* %0, %struct.link_params** %4, align 8
  store %struct.link_vars* %1, %struct.link_vars** %5, align 8
  %9 = load %struct.link_params*, %struct.link_params** %4, align 8
  %10 = getelementptr inbounds %struct.link_params, %struct.link_params* %9, i32 0, i32 1
  %11 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  store %struct.bnx2x* %11, %struct.bnx2x** %6, align 8
  %12 = load %struct.link_params*, %struct.link_params** %4, align 8
  %13 = getelementptr inbounds %struct.link_params, %struct.link_params* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* @NETIF_MSG_LINK, align 4
  %16 = call i32 (i32, i8*, ...) @DP(i32 %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %18 = load i64, i64* @GRCBASE_EMAC0, align 8
  %19 = load i32, i32* %7, align 4
  %20 = mul nsw i32 %19, 1024
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %18, %21
  %23 = load i64, i64* @EMAC_REG_EMAC_MODE, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i32, i32* @EMAC_MODE_25G_MODE, align 4
  %26 = load i32, i32* @EMAC_MODE_PORT_MII_10M, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @EMAC_MODE_HALF_DUPLEX, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @bnx2x_bits_dis(%struct.bnx2x* %17, i64 %24, i32 %29)
  %31 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %32 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %52 [
    i32 131, label %34
    i32 130, label %38
    i32 129, label %42
    i32 128, label %46
  ]

34:                                               ; preds = %2
  %35 = load i32, i32* @EMAC_MODE_PORT_MII_10M, align 4
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  br label %60

38:                                               ; preds = %2
  %39 = load i32, i32* @EMAC_MODE_PORT_MII, align 4
  %40 = load i32, i32* %8, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %8, align 4
  br label %60

42:                                               ; preds = %2
  %43 = load i32, i32* @EMAC_MODE_PORT_GMII, align 4
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %8, align 4
  br label %60

46:                                               ; preds = %2
  %47 = load i32, i32* @EMAC_MODE_25G_MODE, align 4
  %48 = load i32, i32* @EMAC_MODE_PORT_GMII, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  br label %60

52:                                               ; preds = %2
  %53 = load i32, i32* @NETIF_MSG_LINK, align 4
  %54 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %55 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (i32, i8*, ...) @DP(i32 %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %88

60:                                               ; preds = %46, %42, %38, %34
  %61 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %62 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @DUPLEX_HALF, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i32, i32* @EMAC_MODE_HALF_DUPLEX, align 4
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %66, %60
  %71 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %72 = load i64, i64* @GRCBASE_EMAC0, align 8
  %73 = load i32, i32* %7, align 4
  %74 = mul nsw i32 %73, 1024
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %72, %75
  %77 = load i64, i64* @EMAC_REG_EMAC_MODE, align 8
  %78 = add nsw i64 %76, %77
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @bnx2x_bits_en(%struct.bnx2x* %71, i64 %78, i32 %79)
  %81 = load %struct.link_params*, %struct.link_params** %4, align 8
  %82 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %83 = load i32, i32* @LED_MODE_OPER, align 4
  %84 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %85 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @bnx2x_set_led(%struct.link_params* %81, %struct.link_vars* %82, i32 %83, i32 %86)
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %70, %52
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i32 @bnx2x_bits_dis(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @bnx2x_bits_en(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @bnx2x_set_led(%struct.link_params*, %struct.link_vars*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
