; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mac802154_hwsim.c_hwsim_add_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mac802154_hwsim.c_hwsim_add_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_info = type { i32 }
%struct.device = type { i32 }
%struct.ieee802154_hw = type { %struct.device*, i32, %struct.TYPE_4__*, %struct.hwsim_phy* }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.hwsim_phy = type { i32, %struct.ieee802154_hw*, i32, i32, i32 }
%struct.hwsim_pib = type { i32 }

@hwsim_radio_idx = common dso_local global i32 0, align 4
@hwsim_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IEEE802154_HW_PROMISCUOUS = common dso_local global i32 0, align 4
@hwsim_phys_lock = common dso_local global i32 0, align 4
@hwsim_phys = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genl_info*, %struct.device*, i32)* @hwsim_add_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwsim_add_one(%struct.genl_info* %0, %struct.device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee802154_hw*, align 8
  %9 = alloca %struct.hwsim_phy*, align 8
  %10 = alloca %struct.hwsim_pib*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.genl_info* %0, %struct.genl_info** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @hwsim_radio_idx, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @hwsim_radio_idx, align 4
  store i32 %13, i32* %11, align 4
  %15 = call %struct.ieee802154_hw* @ieee802154_alloc_hw(i32 32, i32* @hwsim_ops)
  store %struct.ieee802154_hw* %15, %struct.ieee802154_hw** %8, align 8
  %16 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %8, align 8
  %17 = icmp ne %struct.ieee802154_hw* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %237

21:                                               ; preds = %3
  %22 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %8, align 8
  %23 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %22, i32 0, i32 3
  %24 = load %struct.hwsim_phy*, %struct.hwsim_phy** %23, align 8
  store %struct.hwsim_phy* %24, %struct.hwsim_phy** %9, align 8
  %25 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %8, align 8
  %26 = load %struct.hwsim_phy*, %struct.hwsim_phy** %9, align 8
  %27 = getelementptr inbounds %struct.hwsim_phy, %struct.hwsim_phy* %26, i32 0, i32 1
  store %struct.ieee802154_hw* %25, %struct.ieee802154_hw** %27, align 8
  %28 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %8, align 8
  %29 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %8, align 8
  %38 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, 2046
  store i32 %45, i32* %43, align 4
  %46 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %8, align 8
  %47 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, 134215680
  store i32 %54, i32* %52, align 4
  %55 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %8, align 8
  %56 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %8, align 8
  %65 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %64, i32 0, i32 2
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, 2046
  store i32 %72, i32* %70, align 4
  %73 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %8, align 8
  %74 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %73, i32 0, i32 2
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, 1
  store i32 %81, i32* %79, align 4
  %82 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %8, align 8
  %83 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %82, i32 0, i32 2
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, 2046
  store i32 %90, i32* %88, align 4
  %91 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %8, align 8
  %92 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %91, i32 0, i32 2
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 3
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, 16383
  store i32 %99, i32* %97, align 4
  %100 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %8, align 8
  %101 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %100, i32 0, i32 2
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 4
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, 1
  store i32 %108, i32* %106, align 4
  %109 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %8, align 8
  %110 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %109, i32 0, i32 2
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 4
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, 30
  store i32 %117, i32* %115, align 4
  %118 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %8, align 8
  %119 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %118, i32 0, i32 2
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 4
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, 65504
  store i32 %126, i32* %124, align 4
  %127 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %8, align 8
  %128 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %127, i32 0, i32 2
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 5
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, 15
  store i32 %135, i32* %133, align 4
  %136 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %8, align 8
  %137 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %136, i32 0, i32 2
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 5
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, 240
  store i32 %144, i32* %142, align 4
  %145 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %8, align 8
  %146 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %145, i32 0, i32 2
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 6
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, 1023
  store i32 %153, i32* %151, align 4
  %154 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %8, align 8
  %155 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %154, i32 0, i32 2
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 6
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, 4193280
  store i32 %162, i32* %160, align 4
  %163 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %8, align 8
  %164 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %163, i32 0, i32 2
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 1
  %167 = call i32 @ieee802154_random_extended_addr(i32* %166)
  %168 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %8, align 8
  %169 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %168, i32 0, i32 2
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  store i32 13, i32* %171, align 8
  %172 = load i32, i32* @GFP_KERNEL, align 4
  %173 = call %struct.hwsim_pib* @kzalloc(i32 4, i32 %172)
  store %struct.hwsim_pib* %173, %struct.hwsim_pib** %10, align 8
  %174 = load %struct.hwsim_pib*, %struct.hwsim_pib** %10, align 8
  %175 = icmp ne %struct.hwsim_pib* %174, null
  br i1 %175, label %179, label %176

176:                                              ; preds = %21
  %177 = load i32, i32* @ENOMEM, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %12, align 4
  br label %231

179:                                              ; preds = %21
  %180 = load %struct.hwsim_phy*, %struct.hwsim_phy** %9, align 8
  %181 = getelementptr inbounds %struct.hwsim_phy, %struct.hwsim_phy* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.hwsim_pib*, %struct.hwsim_pib** %10, align 8
  %184 = call i32 @rcu_assign_pointer(i32 %182, %struct.hwsim_pib* %183)
  %185 = load i32, i32* %11, align 4
  %186 = load %struct.hwsim_phy*, %struct.hwsim_phy** %9, align 8
  %187 = getelementptr inbounds %struct.hwsim_phy, %struct.hwsim_phy* %186, i32 0, i32 0
  store i32 %185, i32* %187, align 8
  %188 = load %struct.hwsim_phy*, %struct.hwsim_phy** %9, align 8
  %189 = getelementptr inbounds %struct.hwsim_phy, %struct.hwsim_phy* %188, i32 0, i32 3
  %190 = call i32 @INIT_LIST_HEAD(i32* %189)
  %191 = load i32, i32* @IEEE802154_HW_PROMISCUOUS, align 4
  %192 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %8, align 8
  %193 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %192, i32 0, i32 1
  store i32 %191, i32* %193, align 8
  %194 = load %struct.device*, %struct.device** %6, align 8
  %195 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %8, align 8
  %196 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %195, i32 0, i32 0
  store %struct.device* %194, %struct.device** %196, align 8
  %197 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %8, align 8
  %198 = call i32 @ieee802154_register_hw(%struct.ieee802154_hw* %197)
  store i32 %198, i32* %12, align 4
  %199 = load i32, i32* %12, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %179
  br label %228

202:                                              ; preds = %179
  %203 = call i32 @mutex_lock(i32* @hwsim_phys_lock)
  %204 = load i32, i32* %7, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %214

206:                                              ; preds = %202
  %207 = load %struct.hwsim_phy*, %struct.hwsim_phy** %9, align 8
  %208 = call i32 @hwsim_subscribe_all_others(%struct.hwsim_phy* %207)
  store i32 %208, i32* %12, align 4
  %209 = load i32, i32* %12, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %206
  %212 = call i32 @mutex_unlock(i32* @hwsim_phys_lock)
  br label %223

213:                                              ; preds = %206
  br label %214

214:                                              ; preds = %213, %202
  %215 = load %struct.hwsim_phy*, %struct.hwsim_phy** %9, align 8
  %216 = getelementptr inbounds %struct.hwsim_phy, %struct.hwsim_phy* %215, i32 0, i32 2
  %217 = call i32 @list_add_tail(i32* %216, i32* @hwsim_phys)
  %218 = call i32 @mutex_unlock(i32* @hwsim_phys_lock)
  %219 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %220 = load %struct.hwsim_phy*, %struct.hwsim_phy** %9, align 8
  %221 = call i32 @hwsim_mcast_new_radio(%struct.genl_info* %219, %struct.hwsim_phy* %220)
  %222 = load i32, i32* %11, align 4
  store i32 %222, i32* %4, align 4
  br label %237

223:                                              ; preds = %211
  %224 = load %struct.hwsim_phy*, %struct.hwsim_phy** %9, align 8
  %225 = getelementptr inbounds %struct.hwsim_phy, %struct.hwsim_phy* %224, i32 0, i32 1
  %226 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %225, align 8
  %227 = call i32 @ieee802154_unregister_hw(%struct.ieee802154_hw* %226)
  br label %228

228:                                              ; preds = %223, %201
  %229 = load %struct.hwsim_pib*, %struct.hwsim_pib** %10, align 8
  %230 = call i32 @kfree(%struct.hwsim_pib* %229)
  br label %231

231:                                              ; preds = %228, %176
  %232 = load %struct.hwsim_phy*, %struct.hwsim_phy** %9, align 8
  %233 = getelementptr inbounds %struct.hwsim_phy, %struct.hwsim_phy* %232, i32 0, i32 1
  %234 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %233, align 8
  %235 = call i32 @ieee802154_free_hw(%struct.ieee802154_hw* %234)
  %236 = load i32, i32* %12, align 4
  store i32 %236, i32* %4, align 4
  br label %237

237:                                              ; preds = %231, %214, %18
  %238 = load i32, i32* %4, align 4
  ret i32 %238
}

declare dso_local %struct.ieee802154_hw* @ieee802154_alloc_hw(i32, i32*) #1

declare dso_local i32 @ieee802154_random_extended_addr(i32*) #1

declare dso_local %struct.hwsim_pib* @kzalloc(i32, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.hwsim_pib*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ieee802154_register_hw(%struct.ieee802154_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hwsim_subscribe_all_others(%struct.hwsim_phy*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @hwsim_mcast_new_radio(%struct.genl_info*, %struct.hwsim_phy*) #1

declare dso_local i32 @ieee802154_unregister_hw(%struct.ieee802154_hw*) #1

declare dso_local i32 @kfree(%struct.hwsim_pib*) #1

declare dso_local i32 @ieee802154_free_hw(%struct.ieee802154_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
