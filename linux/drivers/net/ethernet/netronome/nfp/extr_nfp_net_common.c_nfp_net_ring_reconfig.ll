; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_ring_reconfig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_ring_reconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nfp_net_dp = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.netlink_ext_ack = type { i32 }

@.str = private unnamed_addr constant [61 x i8] c"Can't restore ring config - FW communication failed (%d,%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_net_ring_reconfig(%struct.nfp_net* %0, %struct.nfp_net_dp* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_net*, align 8
  %6 = alloca %struct.nfp_net_dp*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nfp_net* %0, %struct.nfp_net** %5, align 8
  store %struct.nfp_net_dp* %1, %struct.nfp_net_dp** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %11 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %12 = call i32 @nfp_net_calc_fl_bufsz(%struct.nfp_net_dp* %11)
  %13 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %14 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %13, i32 0, i32 6
  store i32 %12, i32* %14, align 4
  %15 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %16 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %19 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %21 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %3
  %25 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %26 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %29 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = sub nsw i64 %31, %27
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %29, align 8
  br label %34

34:                                               ; preds = %24, %3
  %35 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %36 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %39 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @max(i64 %37, i32 %40)
  %42 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %43 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %45 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %46 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %47 = call i32 @nfp_net_check_config(%struct.nfp_net* %44, %struct.nfp_net_dp* %45, %struct.netlink_ext_ack* %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %34
  br label %161

51:                                               ; preds = %34
  %52 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %53 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @netif_running(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %51
  %58 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %59 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %60 = call i32 @nfp_net_dp_swap(%struct.nfp_net* %58, %struct.nfp_net_dp* %59)
  store i32 0, i32* %9, align 4
  br label %161

61:                                               ; preds = %51
  %62 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %63 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %89, %61
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %69 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %92

72:                                               ; preds = %66
  %73 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %74 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %75 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @nfp_net_prepare_vector(%struct.nfp_net* %73, i32* %79, i32 %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %72
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %87 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  br label %168

88:                                               ; preds = %72
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %66

92:                                               ; preds = %66
  %93 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %94 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %95 = call i32 @nfp_net_rx_rings_prepare(%struct.nfp_net* %93, %struct.nfp_net_dp* %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %168

99:                                               ; preds = %92
  %100 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %101 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %102 = call i32 @nfp_net_tx_rings_prepare(%struct.nfp_net* %100, %struct.nfp_net_dp* %101)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  br label %165

106:                                              ; preds = %99
  %107 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %108 = call i32 @nfp_net_close_stack(%struct.nfp_net* %107)
  %109 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %110 = call i32 @nfp_net_clear_config_and_disable(%struct.nfp_net* %109)
  %111 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %112 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %113 = call i32 @nfp_net_dp_swap_enable(%struct.nfp_net* %111, %struct.nfp_net_dp* %112)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %130

116:                                              ; preds = %106
  %117 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %118 = call i32 @nfp_net_clear_config_and_disable(%struct.nfp_net* %117)
  %119 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %120 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %121 = call i32 @nfp_net_dp_swap_enable(%struct.nfp_net* %119, %struct.nfp_net_dp* %120)
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %10, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %116
  %125 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %10, align 4
  %128 = call i32 @nn_err(%struct.nfp_net* %125, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %124, %116
  br label %130

130:                                              ; preds = %129, %106
  %131 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %132 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sub nsw i32 %133, 1
  store i32 %134, i32* %8, align 4
  br label %135

135:                                              ; preds = %151, %130
  %136 = load i32, i32* %8, align 4
  %137 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %138 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp sge i32 %136, %140
  br i1 %141, label %142, label %154

142:                                              ; preds = %135
  %143 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %144 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %145 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = call i32 @nfp_net_cleanup_vector(%struct.nfp_net* %143, i32* %149)
  br label %151

151:                                              ; preds = %142
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %8, align 4
  br label %135

154:                                              ; preds = %135
  %155 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %156 = call i32 @nfp_net_rx_rings_free(%struct.nfp_net_dp* %155)
  %157 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %158 = call i32 @nfp_net_tx_rings_free(%struct.nfp_net_dp* %157)
  %159 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %160 = call i32 @nfp_net_open_stack(%struct.nfp_net* %159)
  br label %161

161:                                              ; preds = %154, %57, %50
  %162 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %163 = call i32 @kfree(%struct.nfp_net_dp* %162)
  %164 = load i32, i32* %9, align 4
  store i32 %164, i32* %4, align 4
  br label %196

165:                                              ; preds = %105
  %166 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %167 = call i32 @nfp_net_rx_rings_free(%struct.nfp_net_dp* %166)
  br label %168

168:                                              ; preds = %165, %98, %84
  %169 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %170 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = sub nsw i32 %171, 1
  store i32 %172, i32* %8, align 4
  br label %173

173:                                              ; preds = %189, %168
  %174 = load i32, i32* %8, align 4
  %175 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %176 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp sge i32 %174, %178
  br i1 %179, label %180, label %192

180:                                              ; preds = %173
  %181 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %182 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %183 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %8, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = call i32 @nfp_net_cleanup_vector(%struct.nfp_net* %181, i32* %187)
  br label %189

189:                                              ; preds = %180
  %190 = load i32, i32* %8, align 4
  %191 = add nsw i32 %190, -1
  store i32 %191, i32* %8, align 4
  br label %173

192:                                              ; preds = %173
  %193 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %194 = call i32 @kfree(%struct.nfp_net_dp* %193)
  %195 = load i32, i32* %9, align 4
  store i32 %195, i32* %4, align 4
  br label %196

196:                                              ; preds = %192, %161
  %197 = load i32, i32* %4, align 4
  ret i32 %197
}

declare dso_local i32 @nfp_net_calc_fl_bufsz(%struct.nfp_net_dp*) #1

declare dso_local i32 @max(i64, i32) #1

declare dso_local i32 @nfp_net_check_config(%struct.nfp_net*, %struct.nfp_net_dp*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @netif_running(i32) #1

declare dso_local i32 @nfp_net_dp_swap(%struct.nfp_net*, %struct.nfp_net_dp*) #1

declare dso_local i32 @nfp_net_prepare_vector(%struct.nfp_net*, i32*, i32) #1

declare dso_local i32 @nfp_net_rx_rings_prepare(%struct.nfp_net*, %struct.nfp_net_dp*) #1

declare dso_local i32 @nfp_net_tx_rings_prepare(%struct.nfp_net*, %struct.nfp_net_dp*) #1

declare dso_local i32 @nfp_net_close_stack(%struct.nfp_net*) #1

declare dso_local i32 @nfp_net_clear_config_and_disable(%struct.nfp_net*) #1

declare dso_local i32 @nfp_net_dp_swap_enable(%struct.nfp_net*, %struct.nfp_net_dp*) #1

declare dso_local i32 @nn_err(%struct.nfp_net*, i8*, i32, i32) #1

declare dso_local i32 @nfp_net_cleanup_vector(%struct.nfp_net*, i32*) #1

declare dso_local i32 @nfp_net_rx_rings_free(%struct.nfp_net_dp*) #1

declare dso_local i32 @nfp_net_tx_rings_free(%struct.nfp_net_dp*) #1

declare dso_local i32 @nfp_net_open_stack(%struct.nfp_net*) #1

declare dso_local i32 @kfree(%struct.nfp_net_dp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
