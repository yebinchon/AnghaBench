; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10_sriov.c_efx_ef10_sriov_set_vf_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10_sriov.c_efx_ef10_sriov_set_vf_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.efx_ef10_nic_data* }
%struct.efx_ef10_nic_data = type { %struct.ef10_vf* }
%struct.ef10_vf = type { i32*, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_12__*, i32, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EVB_PORT_ID_ASSIGNED = common dso_local global i32 0, align 4
@EVB_PORT_ID_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_ef10_sriov_set_vf_mac(%struct.efx_nic* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.efx_ef10_nic_data*, align 8
  %9 = alloca %struct.ef10_vf*, align 8
  %10 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %12 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %11, i32 0, i32 1
  %13 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %12, align 8
  store %struct.efx_ef10_nic_data* %13, %struct.efx_ef10_nic_data** %8, align 8
  %14 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %8, align 8
  %15 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %14, i32 0, i32 0
  %16 = load %struct.ef10_vf*, %struct.ef10_vf** %15, align 8
  %17 = icmp ne %struct.ef10_vf* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %215

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %24 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sge i32 %22, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %215

30:                                               ; preds = %21
  %31 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %8, align 8
  %32 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %31, i32 0, i32 0
  %33 = load %struct.ef10_vf*, %struct.ef10_vf** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %33, i64 %35
  store %struct.ef10_vf* %36, %struct.ef10_vf** %9, align 8
  %37 = load %struct.ef10_vf*, %struct.ef10_vf** %9, align 8
  %38 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %37, i32 0, i32 1
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = icmp ne %struct.TYPE_11__* %39, null
  br i1 %40, label %41, label %83

41:                                               ; preds = %30
  %42 = load %struct.ef10_vf*, %struct.ef10_vf** %9, align 8
  %43 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %42, i32 0, i32 1
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = call i32 @efx_device_detach_sync(%struct.TYPE_11__* %44)
  %46 = load %struct.ef10_vf*, %struct.ef10_vf** %9, align 8
  %47 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %46, i32 0, i32 1
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = call i32 @efx_net_stop(%struct.TYPE_12__* %50)
  %52 = load %struct.ef10_vf*, %struct.ef10_vf** %9, align 8
  %53 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %52, i32 0, i32 1
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = call i32 @down_write(i32* %55)
  %57 = load %struct.ef10_vf*, %struct.ef10_vf** %9, align 8
  %58 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %57, i32 0, i32 1
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %62, align 8
  %64 = load %struct.ef10_vf*, %struct.ef10_vf** %9, align 8
  %65 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %64, i32 0, i32 1
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = call i32 %63(%struct.TYPE_11__* %66)
  %68 = load %struct.ef10_vf*, %struct.ef10_vf** %9, align 8
  %69 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %68, i32 0, i32 1
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = load i32, i32* @EVB_PORT_ID_ASSIGNED, align 4
  %72 = call i32 @efx_ef10_vadaptor_free(%struct.TYPE_11__* %70, i32 %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %41
  %76 = load %struct.ef10_vf*, %struct.ef10_vf** %9, align 8
  %77 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %76, i32 0, i32 1
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = call i32 @up_write(i32* %79)
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %4, align 4
  br label %215

82:                                               ; preds = %41
  br label %83

83:                                               ; preds = %82, %30
  %84 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %85 = load i32, i32* @EVB_PORT_ID_NULL, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @efx_ef10_evb_port_assign(%struct.efx_nic* %84, i32 %85, i32 %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %4, align 4
  br label %215

92:                                               ; preds = %83
  %93 = load %struct.ef10_vf*, %struct.ef10_vf** %9, align 8
  %94 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @is_zero_ether_addr(i32* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %112, label %98

98:                                               ; preds = %92
  %99 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %100 = load %struct.ef10_vf*, %struct.ef10_vf** %9, align 8
  %101 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.ef10_vf*, %struct.ef10_vf** %9, align 8
  %104 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @efx_ef10_vport_del_vf_mac(%struct.efx_nic* %99, i32 %102, i32* %105)
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %98
  %110 = load i32, i32* %10, align 4
  store i32 %110, i32* %4, align 4
  br label %215

111:                                              ; preds = %98
  br label %112

112:                                              ; preds = %111, %92
  %113 = load i32*, i32** %7, align 8
  %114 = call i32 @is_zero_ether_addr(i32* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %146, label %116

116:                                              ; preds = %112
  %117 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %118 = load %struct.ef10_vf*, %struct.ef10_vf** %9, align 8
  %119 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = call i32 @efx_ef10_vport_add_mac(%struct.efx_nic* %117, i32 %120, i32* %121)
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %116
  %126 = load %struct.ef10_vf*, %struct.ef10_vf** %9, align 8
  %127 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @eth_zero_addr(i32* %128)
  br label %209

130:                                              ; preds = %116
  %131 = load %struct.ef10_vf*, %struct.ef10_vf** %9, align 8
  %132 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %131, i32 0, i32 1
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %132, align 8
  %134 = icmp ne %struct.TYPE_11__* %133, null
  br i1 %134, label %135, label %145

135:                                              ; preds = %130
  %136 = load %struct.ef10_vf*, %struct.ef10_vf** %9, align 8
  %137 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %136, i32 0, i32 1
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i32*, i32** %7, align 8
  %144 = call i32 @ether_addr_copy(i32* %142, i32* %143)
  br label %145

145:                                              ; preds = %135, %130
  br label %146

146:                                              ; preds = %145, %112
  %147 = load %struct.ef10_vf*, %struct.ef10_vf** %9, align 8
  %148 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = load i32*, i32** %7, align 8
  %151 = call i32 @ether_addr_copy(i32* %149, i32* %150)
  %152 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %153 = load %struct.ef10_vf*, %struct.ef10_vf** %9, align 8
  %154 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* %6, align 4
  %157 = call i32 @efx_ef10_evb_port_assign(%struct.efx_nic* %152, i32 %155, i32 %156)
  store i32 %157, i32* %10, align 4
  %158 = load i32, i32* %10, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %146
  br label %209

161:                                              ; preds = %146
  %162 = load %struct.ef10_vf*, %struct.ef10_vf** %9, align 8
  %163 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %162, i32 0, i32 1
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %163, align 8
  %165 = icmp ne %struct.TYPE_11__* %164, null
  br i1 %165, label %166, label %208

166:                                              ; preds = %161
  %167 = load %struct.ef10_vf*, %struct.ef10_vf** %9, align 8
  %168 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %167, i32 0, i32 1
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %168, align 8
  %170 = load i32, i32* @EVB_PORT_ID_ASSIGNED, align 4
  %171 = call i32 @efx_ef10_vadaptor_alloc(%struct.TYPE_11__* %169, i32 %170)
  store i32 %171, i32* %10, align 4
  %172 = load i32, i32* %10, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %166
  %175 = load %struct.ef10_vf*, %struct.ef10_vf** %9, align 8
  %176 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %175, i32 0, i32 1
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 1
  %179 = call i32 @up_write(i32* %178)
  %180 = load i32, i32* %10, align 4
  store i32 %180, i32* %4, align 4
  br label %215

181:                                              ; preds = %166
  %182 = load %struct.ef10_vf*, %struct.ef10_vf** %9, align 8
  %183 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %182, i32 0, i32 1
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 2
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 0
  %188 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %187, align 8
  %189 = load %struct.ef10_vf*, %struct.ef10_vf** %9, align 8
  %190 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %189, i32 0, i32 1
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %190, align 8
  %192 = call i32 %188(%struct.TYPE_11__* %191)
  %193 = load %struct.ef10_vf*, %struct.ef10_vf** %9, align 8
  %194 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %193, i32 0, i32 1
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 1
  %197 = call i32 @up_write(i32* %196)
  %198 = load %struct.ef10_vf*, %struct.ef10_vf** %9, align 8
  %199 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %198, i32 0, i32 1
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %201, align 8
  %203 = call i32 @efx_net_open(%struct.TYPE_12__* %202)
  %204 = load %struct.ef10_vf*, %struct.ef10_vf** %9, align 8
  %205 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %204, i32 0, i32 1
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %205, align 8
  %207 = call i32 @efx_device_attach_if_not_resetting(%struct.TYPE_11__* %206)
  br label %208

208:                                              ; preds = %181, %161
  store i32 0, i32* %4, align 4
  br label %215

209:                                              ; preds = %160, %125
  %210 = load %struct.ef10_vf*, %struct.ef10_vf** %9, align 8
  %211 = getelementptr inbounds %struct.ef10_vf, %struct.ef10_vf* %210, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = call i32 @eth_zero_addr(i32* %212)
  %214 = load i32, i32* %10, align 4
  store i32 %214, i32* %4, align 4
  br label %215

215:                                              ; preds = %209, %208, %174, %109, %90, %75, %27, %18
  %216 = load i32, i32* %4, align 4
  ret i32 %216
}

declare dso_local i32 @efx_device_detach_sync(%struct.TYPE_11__*) #1

declare dso_local i32 @efx_net_stop(%struct.TYPE_12__*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @efx_ef10_vadaptor_free(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @efx_ef10_evb_port_assign(%struct.efx_nic*, i32, i32) #1

declare dso_local i32 @is_zero_ether_addr(i32*) #1

declare dso_local i32 @efx_ef10_vport_del_vf_mac(%struct.efx_nic*, i32, i32*) #1

declare dso_local i32 @efx_ef10_vport_add_mac(%struct.efx_nic*, i32, i32*) #1

declare dso_local i32 @eth_zero_addr(i32*) #1

declare dso_local i32 @ether_addr_copy(i32*, i32*) #1

declare dso_local i32 @efx_ef10_vadaptor_alloc(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @efx_net_open(%struct.TYPE_12__*) #1

declare dso_local i32 @efx_device_attach_if_not_resetting(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
