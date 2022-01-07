; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_port.c_nfp_port_init_phy_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_port.c_nfp_port_init_phy_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_pf = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.nfp_app = type { i32 }
%struct.nfp_port = type { i32, i64, %struct.TYPE_3__*, i32 }

@.str = private unnamed_addr constant [50 x i8] c"NSP port entries don't match vNICs (no entry %d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [78 x i8] c"Config changed for port #%d, reboot required before port will be operational\0A\00", align 1
@NFP_PORT_INVALID = common dso_local global i32 0, align 4
@NFP_MAC_STATS_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_port_init_phy_port(%struct.nfp_pf* %0, %struct.nfp_app* %1, %struct.nfp_port* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfp_pf*, align 8
  %7 = alloca %struct.nfp_app*, align 8
  %8 = alloca %struct.nfp_port*, align 8
  %9 = alloca i32, align 4
  store %struct.nfp_pf* %0, %struct.nfp_pf** %6, align 8
  store %struct.nfp_app* %1, %struct.nfp_app** %7, align 8
  store %struct.nfp_port* %2, %struct.nfp_port** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.nfp_pf*, %struct.nfp_pf** %6, align 8
  %11 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %4
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.nfp_pf*, %struct.nfp_pf** %6, align 8
  %17 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp uge i32 %15, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %14, %4
  %23 = load %struct.nfp_app*, %struct.nfp_app** %7, align 8
  %24 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @nfp_err(i32 %25, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %101

30:                                               ; preds = %14
  %31 = load %struct.nfp_pf*, %struct.nfp_pf** %6, align 8
  %32 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %30
  %43 = load %struct.nfp_app*, %struct.nfp_app** %7, align 8
  %44 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.nfp_pf*, %struct.nfp_pf** %6, align 8
  %47 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @nfp_warn(i32 %45, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @NFP_PORT_INVALID, align 4
  %58 = load %struct.nfp_port*, %struct.nfp_port** %8, align 8
  %59 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 8
  store i32 0, i32* %5, align 4
  br label %101

60:                                               ; preds = %30
  %61 = load %struct.nfp_pf*, %struct.nfp_pf** %6, align 8
  %62 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %67
  %69 = load %struct.nfp_port*, %struct.nfp_port** %8, align 8
  %70 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %69, i32 0, i32 2
  store %struct.TYPE_3__* %68, %struct.TYPE_3__** %70, align 8
  %71 = load %struct.nfp_pf*, %struct.nfp_pf** %6, align 8
  %72 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.nfp_port*, %struct.nfp_port** %8, align 8
  %82 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.nfp_pf*, %struct.nfp_pf** %6, align 8
  %84 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %60
  %88 = load %struct.nfp_pf*, %struct.nfp_pf** %6, align 8
  %89 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.nfp_port*, %struct.nfp_port** %8, align 8
  %92 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @NFP_MAC_STATS_SIZE, align 4
  %95 = mul nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %90, %96
  %98 = load %struct.nfp_port*, %struct.nfp_port** %8, align 8
  %99 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %98, i32 0, i32 1
  store i64 %97, i64* %99, align 8
  br label %100

100:                                              ; preds = %87, %60
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %100, %42, %22
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @nfp_err(i32, i8*, i32) #1

declare dso_local i32 @nfp_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
