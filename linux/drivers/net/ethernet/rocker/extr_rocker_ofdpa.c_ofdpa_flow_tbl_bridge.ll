; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_flow_tbl_bridge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_flow_tbl_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofdpa_port = type { i32 }
%struct.ofdpa_flow_tbl_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i8*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i8*, i8*, i64, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ROCKER_OF_DPA_TABLE_ID_BRIDGING = common dso_local global i32 0, align 4
@ff_mac = common dso_local global i32 0, align 4
@OFDPA_PRIORITY_UNKNOWN = common dso_local global i8* null, align 8
@OFDPA_PRIORITY_BRIDGING_VLAN_DFLT_WILD = common dso_local global i8* null, align 8
@OFDPA_PRIORITY_BRIDGING_VLAN_DFLT_EXACT = common dso_local global i8* null, align 8
@OFDPA_PRIORITY_BRIDGING_VLAN = common dso_local global i8* null, align 8
@OFDPA_PRIORITY_BRIDGING_TENANT_DFLT_WILD = common dso_local global i8* null, align 8
@OFDPA_PRIORITY_BRIDGING_TENANT_DFLT_EXACT = common dso_local global i8* null, align 8
@OFDPA_PRIORITY_BRIDGING_TENANT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ofdpa_port*, i32, i32*, i32*, i64, i8*, i32, i8*, i32)* @ofdpa_flow_tbl_bridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofdpa_flow_tbl_bridge(%struct.ofdpa_port* %0, i32 %1, i32* %2, i32* %3, i64 %4, i8* %5, i32 %6, i8* %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.ofdpa_port*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.ofdpa_flow_tbl_entry*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.ofdpa_port* %0, %struct.ofdpa_port** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i64 %4, i64* %15, align 8
  store i8* %5, i8** %16, align 8
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store i32 %8, i32* %19, align 4
  %25 = load i64, i64* %15, align 8
  %26 = icmp ne i64 %25, 0
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %22, align 4
  %30 = load i32*, i32** %13, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %9
  %33 = load i32*, i32** %13, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32*, i32** %14, align 8
  %37 = icmp ne i32* %36, null
  br label %38

38:                                               ; preds = %35, %32
  %39 = phi i1 [ false, %32 ], [ %37, %35 ]
  br label %40

40:                                               ; preds = %38, %9
  %41 = phi i1 [ true, %9 ], [ %39, %38 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %43 = load i32, i32* @GFP_ATOMIC, align 4
  %44 = call %struct.ofdpa_flow_tbl_entry* @kzalloc(i32 64, i32 %43)
  store %struct.ofdpa_flow_tbl_entry* %44, %struct.ofdpa_flow_tbl_entry** %20, align 8
  %45 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %20, align 8
  %46 = icmp ne %struct.ofdpa_flow_tbl_entry* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %10, align 4
  br label %190

50:                                               ; preds = %40
  %51 = load i32, i32* @ROCKER_OF_DPA_TABLE_ID_BRIDGING, align 4
  %52 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %20, align 8
  %53 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  store i32 %51, i32* %54, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %69

57:                                               ; preds = %50
  %58 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %20, align 8
  %59 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %20, align 8
  %63 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 8
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %13, align 8
  %68 = call i32 @ether_addr_copy(i32 %66, i32* %67)
  br label %69

69:                                               ; preds = %57, %50
  %70 = load i32*, i32** %14, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %90

72:                                               ; preds = %69
  %73 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %20, align 8
  %74 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  store i32 1, i32* %76, align 4
  %77 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %20, align 8
  %78 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 8
  %82 = load i32*, i32** %14, align 8
  %83 = call i32 @ether_addr_copy(i32 %81, i32* %82)
  %84 = load i32*, i32** %14, align 8
  %85 = load i32, i32* @ff_mac, align 4
  %86 = call i32 @ether_addr_equal(i32* %84, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %72
  store i32 1, i32* %24, align 4
  br label %89

89:                                               ; preds = %88, %72
  br label %90

90:                                               ; preds = %89, %69
  %91 = load i8*, i8** @OFDPA_PRIORITY_UNKNOWN, align 8
  store i8* %91, i8** %21, align 8
  %92 = load i32, i32* %22, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %90
  %95 = load i32, i32* %23, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load i32, i32* %24, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i8*, i8** @OFDPA_PRIORITY_BRIDGING_VLAN_DFLT_WILD, align 8
  store i8* %101, i8** %21, align 8
  br label %156

102:                                              ; preds = %97, %94, %90
  %103 = load i32, i32* %22, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %102
  %106 = load i32, i32* %23, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load i32, i32* %24, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %108
  %112 = load i8*, i8** @OFDPA_PRIORITY_BRIDGING_VLAN_DFLT_EXACT, align 8
  store i8* %112, i8** %21, align 8
  br label %155

113:                                              ; preds = %108, %105, %102
  %114 = load i32, i32* %22, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  %117 = load i32, i32* %23, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %116
  %120 = load i8*, i8** @OFDPA_PRIORITY_BRIDGING_VLAN, align 8
  store i8* %120, i8** %21, align 8
  br label %154

121:                                              ; preds = %116, %113
  %122 = load i32, i32* %22, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %132, label %124

124:                                              ; preds = %121
  %125 = load i32, i32* %23, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %124
  %128 = load i32, i32* %24, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = load i8*, i8** @OFDPA_PRIORITY_BRIDGING_TENANT_DFLT_WILD, align 8
  store i8* %131, i8** %21, align 8
  br label %153

132:                                              ; preds = %127, %124, %121
  %133 = load i32, i32* %22, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %143, label %135

135:                                              ; preds = %132
  %136 = load i32, i32* %23, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %135
  %139 = load i32, i32* %24, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %138
  %142 = load i8*, i8** @OFDPA_PRIORITY_BRIDGING_TENANT_DFLT_EXACT, align 8
  store i8* %142, i8** %21, align 8
  br label %152

143:                                              ; preds = %138, %135, %132
  %144 = load i32, i32* %22, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %143
  %147 = load i32, i32* %23, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %146
  %150 = load i8*, i8** @OFDPA_PRIORITY_BRIDGING_TENANT, align 8
  store i8* %150, i8** %21, align 8
  br label %151

151:                                              ; preds = %149, %146, %143
  br label %152

152:                                              ; preds = %151, %141
  br label %153

153:                                              ; preds = %152, %130
  br label %154

154:                                              ; preds = %153, %119
  br label %155

155:                                              ; preds = %154, %111
  br label %156

156:                                              ; preds = %155, %100
  %157 = load i8*, i8** %21, align 8
  %158 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %20, align 8
  %159 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 1
  store i8* %157, i8** %160, align 8
  %161 = load i64, i64* %15, align 8
  %162 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %20, align 8
  %163 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 6
  store i64 %161, i64* %165, align 8
  %166 = load i8*, i8** %16, align 8
  %167 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %20, align 8
  %168 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 5
  store i8* %166, i8** %170, align 8
  %171 = load i32, i32* %17, align 4
  %172 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %20, align 8
  %173 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 2
  store i32 %171, i32* %175, align 8
  %176 = load i8*, i8** %18, align 8
  %177 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %20, align 8
  %178 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 4
  store i8* %176, i8** %180, align 8
  %181 = load i32, i32* %19, align 4
  %182 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %20, align 8
  %183 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 3
  store i32 %181, i32* %185, align 4
  %186 = load %struct.ofdpa_port*, %struct.ofdpa_port** %11, align 8
  %187 = load i32, i32* %12, align 4
  %188 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %20, align 8
  %189 = call i32 @ofdpa_flow_tbl_do(%struct.ofdpa_port* %186, i32 %187, %struct.ofdpa_flow_tbl_entry* %188)
  store i32 %189, i32* %10, align 4
  br label %190

190:                                              ; preds = %156, %47
  %191 = load i32, i32* %10, align 4
  ret i32 %191
}

declare dso_local %struct.ofdpa_flow_tbl_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @ether_addr_equal(i32*, i32) #1

declare dso_local i32 @ofdpa_flow_tbl_do(%struct.ofdpa_port*, i32, %struct.ofdpa_flow_tbl_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
