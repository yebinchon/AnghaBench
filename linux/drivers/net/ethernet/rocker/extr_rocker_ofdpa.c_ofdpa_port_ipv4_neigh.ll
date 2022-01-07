; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_port_ipv4_neigh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_port_ipv4_neigh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofdpa_port = type { %struct.TYPE_2__*, i32, i32, %struct.ofdpa* }
%struct.TYPE_2__ = type { i32 }
%struct.ofdpa = type { i32 }
%struct.ofdpa_neigh_tbl_entry = type { i32, i32, i32, i32, %struct.TYPE_2__* }

@ETH_P_IP = common dso_local global i32 0, align 4
@ROCKER_OF_DPA_TABLE_ID_ACL_POLICY = common dso_local global i32 0, align 4
@OFDPA_OP_FLAG_REMOVE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Error (%d) L3 unicast group index %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Error (%d) /32 unicast route %pI4 group 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ofdpa_port*, i32, i32, i32*)* @ofdpa_port_ipv4_neigh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofdpa_port_ipv4_neigh(%struct.ofdpa_port* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ofdpa_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ofdpa*, align 8
  %11 = alloca %struct.ofdpa_neigh_tbl_entry*, align 8
  %12 = alloca %struct.ofdpa_neigh_tbl_entry*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.ofdpa_port* %0, %struct.ofdpa_port** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %22 = load %struct.ofdpa_port*, %struct.ofdpa_port** %6, align 8
  %23 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %22, i32 0, i32 3
  %24 = load %struct.ofdpa*, %struct.ofdpa** %23, align 8
  store %struct.ofdpa* %24, %struct.ofdpa** %10, align 8
  %25 = load i32, i32* @ETH_P_IP, align 4
  %26 = call i32 @htons(i32 %25)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* @ROCKER_OF_DPA_TABLE_ID_ACL_POLICY, align 4
  store i32 %27, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @OFDPA_OP_FLAG_REMOVE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %18, align 4
  store i32 0, i32* %21, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.ofdpa_neigh_tbl_entry* @kzalloc(i32 24, i32 %34)
  store %struct.ofdpa_neigh_tbl_entry* %35, %struct.ofdpa_neigh_tbl_entry** %11, align 8
  %36 = load %struct.ofdpa_neigh_tbl_entry*, %struct.ofdpa_neigh_tbl_entry** %11, align 8
  %37 = icmp ne %struct.ofdpa_neigh_tbl_entry* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %4
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %205

41:                                               ; preds = %4
  %42 = load %struct.ofdpa*, %struct.ofdpa** %10, align 8
  %43 = getelementptr inbounds %struct.ofdpa, %struct.ofdpa* %42, i32 0, i32 0
  %44 = load i64, i64* %13, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  %46 = load %struct.ofdpa*, %struct.ofdpa** %10, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call %struct.ofdpa_neigh_tbl_entry* @ofdpa_neigh_tbl_find(%struct.ofdpa* %46, i32 %47)
  store %struct.ofdpa_neigh_tbl_entry* %48, %struct.ofdpa_neigh_tbl_entry** %12, align 8
  %49 = load %struct.ofdpa_neigh_tbl_entry*, %struct.ofdpa_neigh_tbl_entry** %12, align 8
  %50 = icmp ne %struct.ofdpa_neigh_tbl_entry* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = load i32, i32* %18, align 4
  %53 = icmp ne i32 %52, 0
  br label %54

54:                                               ; preds = %51, %41
  %55 = phi i1 [ false, %41 ], [ %53, %51 ]
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %19, align 4
  %57 = load %struct.ofdpa_neigh_tbl_entry*, %struct.ofdpa_neigh_tbl_entry** %12, align 8
  %58 = icmp ne %struct.ofdpa_neigh_tbl_entry* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* %18, align 4
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  br label %63

63:                                               ; preds = %59, %54
  %64 = phi i1 [ false, %54 ], [ %62, %59 ]
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %20, align 4
  %66 = load %struct.ofdpa_neigh_tbl_entry*, %struct.ofdpa_neigh_tbl_entry** %12, align 8
  %67 = icmp ne %struct.ofdpa_neigh_tbl_entry* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* %18, align 4
  %70 = icmp ne i32 %69, 0
  br label %71

71:                                               ; preds = %68, %63
  %72 = phi i1 [ false, %63 ], [ %70, %68 ]
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %18, align 4
  %74 = load i32, i32* %18, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %95

76:                                               ; preds = %71
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.ofdpa_neigh_tbl_entry*, %struct.ofdpa_neigh_tbl_entry** %11, align 8
  %79 = getelementptr inbounds %struct.ofdpa_neigh_tbl_entry, %struct.ofdpa_neigh_tbl_entry* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.ofdpa_port*, %struct.ofdpa_port** %6, align 8
  %81 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load %struct.ofdpa_neigh_tbl_entry*, %struct.ofdpa_neigh_tbl_entry** %11, align 8
  %84 = getelementptr inbounds %struct.ofdpa_neigh_tbl_entry, %struct.ofdpa_neigh_tbl_entry* %83, i32 0, i32 4
  store %struct.TYPE_2__* %82, %struct.TYPE_2__** %84, align 8
  %85 = load %struct.ofdpa_neigh_tbl_entry*, %struct.ofdpa_neigh_tbl_entry** %11, align 8
  %86 = getelementptr inbounds %struct.ofdpa_neigh_tbl_entry, %struct.ofdpa_neigh_tbl_entry* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %9, align 8
  %89 = call i32 @ether_addr_copy(i32 %87, i32* %88)
  %90 = load %struct.ofdpa_neigh_tbl_entry*, %struct.ofdpa_neigh_tbl_entry** %11, align 8
  %91 = getelementptr inbounds %struct.ofdpa_neigh_tbl_entry, %struct.ofdpa_neigh_tbl_entry* %90, i32 0, i32 0
  store i32 1, i32* %91, align 8
  %92 = load %struct.ofdpa*, %struct.ofdpa** %10, align 8
  %93 = load %struct.ofdpa_neigh_tbl_entry*, %struct.ofdpa_neigh_tbl_entry** %11, align 8
  %94 = call i32 @ofdpa_neigh_add(%struct.ofdpa* %92, %struct.ofdpa_neigh_tbl_entry* %93)
  br label %119

95:                                               ; preds = %71
  %96 = load i32, i32* %20, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load %struct.ofdpa_neigh_tbl_entry*, %struct.ofdpa_neigh_tbl_entry** %11, align 8
  %100 = load %struct.ofdpa_neigh_tbl_entry*, %struct.ofdpa_neigh_tbl_entry** %12, align 8
  %101 = call i32 @memcpy(%struct.ofdpa_neigh_tbl_entry* %99, %struct.ofdpa_neigh_tbl_entry* %100, i32 24)
  %102 = load %struct.ofdpa_neigh_tbl_entry*, %struct.ofdpa_neigh_tbl_entry** %12, align 8
  %103 = call i32 @ofdpa_neigh_del(%struct.ofdpa_neigh_tbl_entry* %102)
  br label %118

104:                                              ; preds = %95
  %105 = load i32, i32* %19, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %104
  %108 = load %struct.ofdpa_neigh_tbl_entry*, %struct.ofdpa_neigh_tbl_entry** %12, align 8
  %109 = load i32*, i32** %9, align 8
  %110 = call i32 @ofdpa_neigh_update(%struct.ofdpa_neigh_tbl_entry* %108, i32* %109, i32 1)
  %111 = load %struct.ofdpa_neigh_tbl_entry*, %struct.ofdpa_neigh_tbl_entry** %11, align 8
  %112 = load %struct.ofdpa_neigh_tbl_entry*, %struct.ofdpa_neigh_tbl_entry** %12, align 8
  %113 = call i32 @memcpy(%struct.ofdpa_neigh_tbl_entry* %111, %struct.ofdpa_neigh_tbl_entry* %112, i32 24)
  br label %117

114:                                              ; preds = %104
  %115 = load i32, i32* @ENOENT, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %21, align 4
  br label %117

117:                                              ; preds = %114, %107
  br label %118

118:                                              ; preds = %117, %98
  br label %119

119:                                              ; preds = %118, %76
  %120 = load %struct.ofdpa*, %struct.ofdpa** %10, align 8
  %121 = getelementptr inbounds %struct.ofdpa, %struct.ofdpa* %120, i32 0, i32 0
  %122 = load i64, i64* %13, align 8
  %123 = call i32 @spin_unlock_irqrestore(i32* %121, i64 %122)
  %124 = load i32, i32* %21, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  br label %197

127:                                              ; preds = %119
  %128 = load %struct.ofdpa_port*, %struct.ofdpa_port** %6, align 8
  %129 = load i32, i32* %7, align 4
  %130 = load %struct.ofdpa_neigh_tbl_entry*, %struct.ofdpa_neigh_tbl_entry** %11, align 8
  %131 = getelementptr inbounds %struct.ofdpa_neigh_tbl_entry, %struct.ofdpa_neigh_tbl_entry* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.ofdpa_port*, %struct.ofdpa_port** %6, align 8
  %134 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %133, i32 0, i32 0
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.ofdpa_neigh_tbl_entry*, %struct.ofdpa_neigh_tbl_entry** %11, align 8
  %139 = getelementptr inbounds %struct.ofdpa_neigh_tbl_entry, %struct.ofdpa_neigh_tbl_entry* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.ofdpa_port*, %struct.ofdpa_port** %6, align 8
  %142 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.ofdpa_neigh_tbl_entry*, %struct.ofdpa_neigh_tbl_entry** %11, align 8
  %145 = getelementptr inbounds %struct.ofdpa_neigh_tbl_entry, %struct.ofdpa_neigh_tbl_entry* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.ofdpa_port*, %struct.ofdpa_port** %6, align 8
  %148 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @ofdpa_group_l3_unicast(%struct.ofdpa_port* %128, i32 %129, i32 %132, i32 %137, i32 %140, i32 %143, i32 %146, i32 %149)
  store i32 %150, i32* %21, align 4
  %151 = load i32, i32* %21, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %164

153:                                              ; preds = %127
  %154 = load %struct.ofdpa_port*, %struct.ofdpa_port** %6, align 8
  %155 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %154, i32 0, i32 0
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = load i32, i32* %21, align 4
  %158 = load %struct.ofdpa_neigh_tbl_entry*, %struct.ofdpa_neigh_tbl_entry** %11, align 8
  %159 = getelementptr inbounds %struct.ofdpa_neigh_tbl_entry, %struct.ofdpa_neigh_tbl_entry* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = sext i32 %160 to i64
  %162 = inttoptr i64 %161 to i32*
  %163 = call i32 (%struct.TYPE_2__*, i8*, i32, i32*, ...) @netdev_err(%struct.TYPE_2__* %156, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %157, i32* %162)
  br label %197

164:                                              ; preds = %127
  %165 = load i32, i32* %18, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %164
  %168 = load i32, i32* %20, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %196

170:                                              ; preds = %167, %164
  %171 = load %struct.ofdpa_neigh_tbl_entry*, %struct.ofdpa_neigh_tbl_entry** %11, align 8
  %172 = getelementptr inbounds %struct.ofdpa_neigh_tbl_entry, %struct.ofdpa_neigh_tbl_entry* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @ROCKER_GROUP_L3_UNICAST(i32 %173)
  store i32 %174, i32* %16, align 4
  %175 = load %struct.ofdpa_port*, %struct.ofdpa_port** %6, align 8
  %176 = load i32, i32* %14, align 4
  %177 = load i32, i32* %8, align 4
  %178 = call i32 @inet_make_mask(i32 32)
  %179 = load i32, i32* %17, align 4
  %180 = load i32, i32* %15, align 4
  %181 = load i32, i32* %16, align 4
  %182 = load i32, i32* %7, align 4
  %183 = call i32 @ofdpa_flow_tbl_ucast4_routing(%struct.ofdpa_port* %175, i32 %176, i32 %177, i32 %178, i32 %179, i32 %180, i32 %181, i32* null, i32 %182)
  store i32 %183, i32* %21, align 4
  %184 = load i32, i32* %21, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %195

186:                                              ; preds = %170
  %187 = load %struct.ofdpa_port*, %struct.ofdpa_port** %6, align 8
  %188 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %187, i32 0, i32 0
  %189 = load %struct.TYPE_2__*, %struct.TYPE_2__** %188, align 8
  %190 = load i32, i32* %21, align 4
  %191 = load %struct.ofdpa_neigh_tbl_entry*, %struct.ofdpa_neigh_tbl_entry** %11, align 8
  %192 = getelementptr inbounds %struct.ofdpa_neigh_tbl_entry, %struct.ofdpa_neigh_tbl_entry* %191, i32 0, i32 1
  %193 = load i32, i32* %16, align 4
  %194 = call i32 (%struct.TYPE_2__*, i8*, i32, i32*, ...) @netdev_err(%struct.TYPE_2__* %189, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %190, i32* %192, i32 %193)
  br label %195

195:                                              ; preds = %186, %170
  br label %196

196:                                              ; preds = %195, %167
  br label %197

197:                                              ; preds = %196, %153, %126
  %198 = load i32, i32* %18, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %203, label %200

200:                                              ; preds = %197
  %201 = load %struct.ofdpa_neigh_tbl_entry*, %struct.ofdpa_neigh_tbl_entry** %11, align 8
  %202 = call i32 @kfree(%struct.ofdpa_neigh_tbl_entry* %201)
  br label %203

203:                                              ; preds = %200, %197
  %204 = load i32, i32* %21, align 4
  store i32 %204, i32* %5, align 4
  br label %205

205:                                              ; preds = %203, %38
  %206 = load i32, i32* %5, align 4
  ret i32 %206
}

declare dso_local i32 @htons(i32) #1

declare dso_local %struct.ofdpa_neigh_tbl_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.ofdpa_neigh_tbl_entry* @ofdpa_neigh_tbl_find(%struct.ofdpa*, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @ofdpa_neigh_add(%struct.ofdpa*, %struct.ofdpa_neigh_tbl_entry*) #1

declare dso_local i32 @memcpy(%struct.ofdpa_neigh_tbl_entry*, %struct.ofdpa_neigh_tbl_entry*, i32) #1

declare dso_local i32 @ofdpa_neigh_del(%struct.ofdpa_neigh_tbl_entry*) #1

declare dso_local i32 @ofdpa_neigh_update(%struct.ofdpa_neigh_tbl_entry*, i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ofdpa_group_l3_unicast(%struct.ofdpa_port*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @netdev_err(%struct.TYPE_2__*, i8*, i32, i32*, ...) #1

declare dso_local i32 @ROCKER_GROUP_L3_UNICAST(i32) #1

declare dso_local i32 @ofdpa_flow_tbl_ucast4_routing(%struct.ofdpa_port*, i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @inet_make_mask(i32) #1

declare dso_local i32 @kfree(%struct.ofdpa_neigh_tbl_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
