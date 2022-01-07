; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_liquidio_set_vf_spoofchk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_liquidio_set_vf_spoofchk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.lio = type { i32, %struct.TYPE_13__, %struct.octeon_device* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.octeon_device = type { %struct.TYPE_14__, %struct.TYPE_8__ }
%struct.TYPE_14__ = type { i32, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.octnic_ctrl_pkt = type { i32*, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i64, i32, i32 }

@LIQUIDIO_SPOOFCHK_CAP = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"firmware does not support spoofchk\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Invalid vfidx %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@OCTNET_CMD_GROUP1 = common dso_local global i32 0, align 4
@OCTNET_CMD_SET_VF_SPOOFCHK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to set VF %d spoofchk %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"VF %u spoofchk is %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @liquidio_set_vf_spoofchk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @liquidio_set_vf_spoofchk(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lio*, align 8
  %9 = alloca %struct.octeon_device*, align 8
  %10 = alloca %struct.octnic_ctrl_pkt, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.lio* @GET_LIO(%struct.net_device* %12)
  store %struct.lio* %13, %struct.lio** %8, align 8
  %14 = load %struct.lio*, %struct.lio** %8, align 8
  %15 = getelementptr inbounds %struct.lio, %struct.lio* %14, i32 0, i32 2
  %16 = load %struct.octeon_device*, %struct.octeon_device** %15, align 8
  store %struct.octeon_device* %16, %struct.octeon_device** %9, align 8
  %17 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %18 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @LIQUIDIO_SPOOFCHK_CAP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %3
  %25 = load %struct.lio*, %struct.lio** %8, align 8
  %26 = load i32, i32* @drv, align 4
  %27 = load %struct.lio*, %struct.lio** %8, align 8
  %28 = getelementptr inbounds %struct.lio, %struct.lio* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (%struct.lio*, i32, i32, i8*, ...) @netif_info(%struct.lio* %25, i32 %26, i32 %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %148

33:                                               ; preds = %3
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %39 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sge i32 %37, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %36, %33
  %44 = load %struct.lio*, %struct.lio** %8, align 8
  %45 = load i32, i32* @drv, align 4
  %46 = load %struct.lio*, %struct.lio** %8, align 8
  %47 = getelementptr inbounds %struct.lio, %struct.lio* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 (%struct.lio*, i32, i32, i8*, ...) @netif_info(%struct.lio* %44, i32 %45, i32 %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %148

53:                                               ; preds = %36
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %53
  %57 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %58 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %148

67:                                               ; preds = %56
  br label %80

68:                                               ; preds = %53
  %69 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %70 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  br label %148

79:                                               ; preds = %68
  br label %80

80:                                               ; preds = %79, %67
  %81 = call i32 @memset(%struct.octnic_ctrl_pkt* %10, i32 0, i32 40)
  %82 = load i32, i32* @OCTNET_CMD_GROUP1, align 4
  %83 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %10, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 4
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* @OCTNET_CMD_SET_VF_SPOOFCHK, align 4
  %87 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %10, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 3
  store i32 %86, i32* %89, align 8
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  %92 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %10, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 8
  %95 = load i32, i32* %7, align 4
  %96 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %10, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  store i32 %95, i32* %98, align 4
  %99 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %10, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 2
  store i64 0, i64* %101, align 8
  %102 = load %struct.lio*, %struct.lio** %8, align 8
  %103 = getelementptr inbounds %struct.lio, %struct.lio* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %10, i32 0, i32 1
  store i32 %109, i32* %110, align 8
  %111 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %10, i32 0, i32 0
  store i32* null, i32** %111, align 8
  %112 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %113 = call i32 @octnet_send_nic_ctrl_pkt(%struct.octeon_device* %112, %struct.octnic_ctrl_pkt* %10)
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %128

116:                                              ; preds = %80
  %117 = load %struct.lio*, %struct.lio** %8, align 8
  %118 = load i32, i32* @drv, align 4
  %119 = load %struct.lio*, %struct.lio** %8, align 8
  %120 = getelementptr inbounds %struct.lio, %struct.lio* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %123, 0
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %127 = call i32 (%struct.lio*, i32, i32, i8*, ...) @netif_info(%struct.lio* %117, i32 %118, i32 %121, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %122, i8* %126)
  store i32 -1, i32* %4, align 4
  br label %148

128:                                              ; preds = %80
  %129 = load i32, i32* %7, align 4
  %130 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %131 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32 %129, i32* %136, align 4
  %137 = load %struct.lio*, %struct.lio** %8, align 8
  %138 = load i32, i32* @drv, align 4
  %139 = load %struct.lio*, %struct.lio** %8, align 8
  %140 = getelementptr inbounds %struct.lio, %struct.lio* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* %7, align 4
  %144 = icmp ne i32 %143, 0
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %147 = call i32 (%struct.lio*, i32, i32, i8*, ...) @netif_info(%struct.lio* %137, i32 %138, i32 %141, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %142, i8* %146)
  store i32 0, i32* %4, align 4
  br label %148

148:                                              ; preds = %128, %116, %78, %66, %43, %24
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local %struct.lio* @GET_LIO(%struct.net_device*) #1

declare dso_local i32 @netif_info(%struct.lio*, i32, i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.octnic_ctrl_pkt*, i32, i32) #1

declare dso_local i32 @octnet_send_nic_ctrl_pkt(%struct.octeon_device*, %struct.octnic_ctrl_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
