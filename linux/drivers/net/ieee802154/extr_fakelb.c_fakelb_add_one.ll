; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_fakelb.c_fakelb_add_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_fakelb.c_fakelb_add_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ieee802154_hw = type { %struct.device*, i32, %struct.TYPE_4__*, %struct.fakelb_phy* }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.fakelb_phy = type { i32, %struct.ieee802154_hw*, i32 }

@fakelb_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IEEE802154_HW_PROMISCUOUS = common dso_local global i32 0, align 4
@fakelb_phys_lock = common dso_local global i32 0, align 4
@fakelb_phys = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @fakelb_add_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fakelb_add_one(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.ieee802154_hw*, align 8
  %5 = alloca %struct.fakelb_phy*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = call %struct.ieee802154_hw* @ieee802154_alloc_hw(i32 24, i32* @fakelb_ops)
  store %struct.ieee802154_hw* %7, %struct.ieee802154_hw** %4, align 8
  %8 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %9 = icmp ne %struct.ieee802154_hw* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %194

13:                                               ; preds = %1
  %14 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %15 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %14, i32 0, i32 3
  %16 = load %struct.fakelb_phy*, %struct.fakelb_phy** %15, align 8
  store %struct.fakelb_phy* %16, %struct.fakelb_phy** %5, align 8
  %17 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %18 = load %struct.fakelb_phy*, %struct.fakelb_phy** %5, align 8
  %19 = getelementptr inbounds %struct.fakelb_phy, %struct.fakelb_phy* %18, i32 0, i32 1
  store %struct.ieee802154_hw* %17, %struct.ieee802154_hw** %19, align 8
  %20 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %21 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %30 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, 2046
  store i32 %37, i32* %35, align 4
  %38 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %39 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, 134215680
  store i32 %46, i32* %44, align 4
  %47 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %48 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %47, i32 0, i32 2
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %57 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %56, i32 0, i32 2
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, 2046
  store i32 %64, i32* %62, align 4
  %65 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %66 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %65, i32 0, i32 2
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %75 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %74, i32 0, i32 2
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, 2046
  store i32 %82, i32* %80, align 4
  %83 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %84 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %83, i32 0, i32 2
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 3
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, 16383
  store i32 %91, i32* %89, align 4
  %92 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %93 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %92, i32 0, i32 2
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 4
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, 1
  store i32 %100, i32* %98, align 4
  %101 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %102 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %101, i32 0, i32 2
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 4
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, 30
  store i32 %109, i32* %107, align 4
  %110 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %111 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %110, i32 0, i32 2
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 4
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, 65504
  store i32 %118, i32* %116, align 4
  %119 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %120 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %119, i32 0, i32 2
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 5
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, 15
  store i32 %127, i32* %125, align 4
  %128 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %129 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %128, i32 0, i32 2
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 5
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, 240
  store i32 %136, i32* %134, align 4
  %137 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %138 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %137, i32 0, i32 2
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 6
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, 1023
  store i32 %145, i32* %143, align 4
  %146 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %147 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %146, i32 0, i32 2
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 6
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, 4193280
  store i32 %154, i32* %152, align 4
  %155 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %156 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %155, i32 0, i32 2
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 1
  %159 = call i32 @ieee802154_random_extended_addr(i32* %158)
  %160 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %161 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %160, i32 0, i32 2
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  store i32 13, i32* %163, align 8
  %164 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %165 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %164, i32 0, i32 2
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.fakelb_phy*, %struct.fakelb_phy** %5, align 8
  %170 = getelementptr inbounds %struct.fakelb_phy, %struct.fakelb_phy* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 8
  %171 = load i32, i32* @IEEE802154_HW_PROMISCUOUS, align 4
  %172 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %173 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 8
  %174 = load %struct.device*, %struct.device** %3, align 8
  %175 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %176 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %175, i32 0, i32 0
  store %struct.device* %174, %struct.device** %176, align 8
  %177 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %178 = call i32 @ieee802154_register_hw(%struct.ieee802154_hw* %177)
  store i32 %178, i32* %6, align 4
  %179 = load i32, i32* %6, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %13
  br label %188

182:                                              ; preds = %13
  %183 = call i32 @mutex_lock(i32* @fakelb_phys_lock)
  %184 = load %struct.fakelb_phy*, %struct.fakelb_phy** %5, align 8
  %185 = getelementptr inbounds %struct.fakelb_phy, %struct.fakelb_phy* %184, i32 0, i32 2
  %186 = call i32 @list_add_tail(i32* %185, i32* @fakelb_phys)
  %187 = call i32 @mutex_unlock(i32* @fakelb_phys_lock)
  store i32 0, i32* %2, align 4
  br label %194

188:                                              ; preds = %181
  %189 = load %struct.fakelb_phy*, %struct.fakelb_phy** %5, align 8
  %190 = getelementptr inbounds %struct.fakelb_phy, %struct.fakelb_phy* %189, i32 0, i32 1
  %191 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %190, align 8
  %192 = call i32 @ieee802154_free_hw(%struct.ieee802154_hw* %191)
  %193 = load i32, i32* %6, align 4
  store i32 %193, i32* %2, align 4
  br label %194

194:                                              ; preds = %188, %182, %10
  %195 = load i32, i32* %2, align 4
  ret i32 %195
}

declare dso_local %struct.ieee802154_hw* @ieee802154_alloc_hw(i32, i32*) #1

declare dso_local i32 @ieee802154_random_extended_addr(i32*) #1

declare dso_local i32 @ieee802154_register_hw(%struct.ieee802154_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ieee802154_free_hw(%struct.ieee802154_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
