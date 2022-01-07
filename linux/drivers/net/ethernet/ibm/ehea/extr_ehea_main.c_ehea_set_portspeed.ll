; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_set_portspeed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_set_portspeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_port = type { i32, i32, i64, i32, i8*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hcp_ehea_port_cb4 = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"no mem for cb4\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@H_PORT_CB4 = common dso_local global i32 0, align 4
@H_PORT_CB4_SPEED = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i64 0, align 8
@EHEA_SPEED_AUTONEG = common dso_local global i64 0, align 8
@EHEA_SPEED_10M = common dso_local global i8* null, align 8
@EHEA_SPEED_100M = common dso_local global i8* null, align 8
@EHEA_SPEED_1G = common dso_local global i8* null, align 8
@EHEA_SPEED_10G = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed sensing port speed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@H_AUTHORITY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"Hypervisor denied setting port speed\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed setting port speed\0A\00", align 1
@prop_carrier_state = common dso_local global i32 0, align 4
@EHEA_PHY_LINK_UP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ehea_set_portspeed(%struct.ehea_port* %0, i64 %1) #0 {
  %3 = alloca %struct.ehea_port*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.hcp_ehea_port_cb4*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ehea_port* %0, %struct.ehea_port** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i64 @get_zeroed_page(i32 %8)
  %10 = inttoptr i64 %9 to i8*
  %11 = bitcast i8* %10 to %struct.hcp_ehea_port_cb4*
  store %struct.hcp_ehea_port_cb4* %11, %struct.hcp_ehea_port_cb4** %5, align 8
  %12 = load %struct.hcp_ehea_port_cb4*, %struct.hcp_ehea_port_cb4** %5, align 8
  %13 = icmp ne %struct.hcp_ehea_port_cb4* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %7, align 4
  br label %147

18:                                               ; preds = %2
  %19 = load i64, i64* %4, align 8
  %20 = trunc i64 %19 to i32
  %21 = load %struct.hcp_ehea_port_cb4*, %struct.hcp_ehea_port_cb4** %5, align 8
  %22 = getelementptr inbounds %struct.hcp_ehea_port_cb4, %struct.hcp_ehea_port_cb4* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %24 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @netif_carrier_off(i32 %25)
  %27 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %28 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %27, i32 0, i32 6
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %33 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @H_PORT_CB4, align 4
  %36 = load i32, i32* @H_PORT_CB4_SPEED, align 4
  %37 = load %struct.hcp_ehea_port_cb4*, %struct.hcp_ehea_port_cb4** %5, align 8
  %38 = call i64 @ehea_h_modify_ehea_port(i32 %31, i32 %34, i32 %35, i32 %36, %struct.hcp_ehea_port_cb4* %37)
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @H_SUCCESS, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %116

42:                                               ; preds = %18
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* @EHEA_SPEED_AUTONEG, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 1, i32 0
  %48 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %49 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %51 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %50, i32 0, i32 6
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %56 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @H_PORT_CB4, align 4
  %59 = load i32, i32* @H_PORT_CB4_SPEED, align 4
  %60 = load %struct.hcp_ehea_port_cb4*, %struct.hcp_ehea_port_cb4** %5, align 8
  %61 = call i64 @ehea_h_query_ehea_port(i32 %54, i32 %57, i32 %58, i32 %59, %struct.hcp_ehea_port_cb4* %60)
  store i64 %61, i64* %6, align 8
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* @H_SUCCESS, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %111

65:                                               ; preds = %42
  %66 = load %struct.hcp_ehea_port_cb4*, %struct.hcp_ehea_port_cb4** %5, align 8
  %67 = getelementptr inbounds %struct.hcp_ehea_port_cb4, %struct.hcp_ehea_port_cb4* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  switch i32 %68, label %105 [
    i32 129, label %69
    i32 130, label %75
    i32 132, label %81
    i32 133, label %87
    i32 128, label %93
    i32 131, label %99
  ]

69:                                               ; preds = %65
  %70 = load i8*, i8** @EHEA_SPEED_10M, align 8
  %71 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %72 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %71, i32 0, i32 4
  store i8* %70, i8** %72, align 8
  %73 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %74 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %73, i32 0, i32 1
  store i32 0, i32* %74, align 4
  br label %110

75:                                               ; preds = %65
  %76 = load i8*, i8** @EHEA_SPEED_10M, align 8
  %77 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %78 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %77, i32 0, i32 4
  store i8* %76, i8** %78, align 8
  %79 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %80 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %79, i32 0, i32 1
  store i32 1, i32* %80, align 4
  br label %110

81:                                               ; preds = %65
  %82 = load i8*, i8** @EHEA_SPEED_100M, align 8
  %83 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %84 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %83, i32 0, i32 4
  store i8* %82, i8** %84, align 8
  %85 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %86 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %85, i32 0, i32 1
  store i32 0, i32* %86, align 4
  br label %110

87:                                               ; preds = %65
  %88 = load i8*, i8** @EHEA_SPEED_100M, align 8
  %89 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %90 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %89, i32 0, i32 4
  store i8* %88, i8** %90, align 8
  %91 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %92 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %91, i32 0, i32 1
  store i32 1, i32* %92, align 4
  br label %110

93:                                               ; preds = %65
  %94 = load i8*, i8** @EHEA_SPEED_1G, align 8
  %95 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %96 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %95, i32 0, i32 4
  store i8* %94, i8** %96, align 8
  %97 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %98 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %97, i32 0, i32 1
  store i32 1, i32* %98, align 4
  br label %110

99:                                               ; preds = %65
  %100 = load i8*, i8** @EHEA_SPEED_10G, align 8
  %101 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %102 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %101, i32 0, i32 4
  store i8* %100, i8** %102, align 8
  %103 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %104 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %103, i32 0, i32 1
  store i32 1, i32* %104, align 4
  br label %110

105:                                              ; preds = %65
  %106 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %107 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %106, i32 0, i32 4
  store i8* null, i8** %107, align 8
  %108 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %109 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %108, i32 0, i32 1
  store i32 0, i32* %109, align 4
  br label %110

110:                                              ; preds = %105, %99, %93, %87, %81, %75, %69
  br label %115

111:                                              ; preds = %42
  %112 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %113 = load i32, i32* @EIO, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %111, %110
  br label %129

116:                                              ; preds = %18
  %117 = load i64, i64* %6, align 8
  %118 = load i64, i64* @H_AUTHORITY, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %122 = load i32, i32* @EPERM, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %7, align 4
  br label %128

124:                                              ; preds = %116
  %125 = load i32, i32* @EIO, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %7, align 4
  %127 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %128

128:                                              ; preds = %124, %120
  br label %129

129:                                              ; preds = %128, %115
  %130 = load i32, i32* @prop_carrier_state, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %129
  %133 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %134 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @EHEA_PHY_LINK_UP, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %132, %129
  %139 = load %struct.ehea_port*, %struct.ehea_port** %3, align 8
  %140 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @netif_carrier_on(i32 %141)
  br label %143

143:                                              ; preds = %138, %132
  %144 = load %struct.hcp_ehea_port_cb4*, %struct.hcp_ehea_port_cb4** %5, align 8
  %145 = ptrtoint %struct.hcp_ehea_port_cb4* %144 to i64
  %146 = call i32 @free_page(i64 %145)
  br label %147

147:                                              ; preds = %143, %14
  %148 = load i32, i32* %7, align 4
  ret i32 %148
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i64 @ehea_h_modify_ehea_port(i32, i32, i32, i32, %struct.hcp_ehea_port_cb4*) #1

declare dso_local i64 @ehea_h_query_ehea_port(i32, i32, i32, i32, %struct.hcp_ehea_port_cb4*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
