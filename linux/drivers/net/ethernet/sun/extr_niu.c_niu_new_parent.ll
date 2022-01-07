; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_new_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_new_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.niu_parent = type { i64, i32, i32*, i32*, i32*, i32, i32, i32, i32, i32, %struct.platform_device*, i64 }
%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.niu_parent* }
%struct.niu = type { i32 }
%union.niu_parent_id = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"niu-board\00", align 1
@niu_parent_index = common dso_local global i32 0, align 4
@niu_parent_attributes = common dso_local global %struct.TYPE_6__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@niu_parent_list = common dso_local global i32 0, align 4
@NIU_PCI_TCAM_ENTRIES = common dso_local global i32 0, align 4
@PLAT_TYPE_NIU = common dso_local global i64 0, align 8
@NIU_NONPCI_TCAM_ENTRIES = common dso_local global i32 0, align 4
@CLASS_CODE_USER_PROG1 = common dso_local global i32 0, align 4
@CLASS_CODE_SCTP_IPV6 = common dso_local global i32 0, align 4
@TCAM_KEY_TSEL = common dso_local global i32 0, align 4
@FLOW_KEY_IPSA = common dso_local global i32 0, align 4
@FLOW_KEY_IPDA = common dso_local global i32 0, align 4
@FLOW_KEY_PROTO = common dso_local global i32 0, align 4
@FLOW_KEY_L4_BYTE12 = common dso_local global i32 0, align 4
@FLOW_KEY_L4_0_SHIFT = common dso_local global i32 0, align 4
@FLOW_KEY_L4_1_SHIFT = common dso_local global i32 0, align 4
@LDN_MAX = common dso_local global i32 0, align 4
@LDG_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.niu_parent* (%struct.niu*, %union.niu_parent_id*, i64)* @niu_new_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.niu_parent* @niu_new_parent(%struct.niu* %0, %union.niu_parent_id* %1, i64 %2) #0 {
  %4 = alloca %struct.niu_parent*, align 8
  %5 = alloca %struct.niu*, align 8
  %6 = alloca %union.niu_parent_id*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca %struct.niu_parent*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %5, align 8
  store %union.niu_parent_id* %1, %union.niu_parent_id** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i32, i32* @niu_parent_index, align 4
  %14 = call %struct.platform_device* @platform_device_register_simple(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %13, i32* null, i32 0)
  store %struct.platform_device* %14, %struct.platform_device** %8, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %16 = call i64 @IS_ERR(%struct.platform_device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store %struct.niu_parent* null, %struct.niu_parent** %4, align 8
  br label %157

19:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %41, %19
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** @niu_parent_attributes, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %20
  %30 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @niu_parent_attributes, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 %34
  %36 = call i32 @device_create_file(%struct.TYPE_7__* %31, %struct.TYPE_6__* %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %154

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %10, align 4
  br label %20

44:                                               ; preds = %20
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.niu_parent* @kzalloc(i32 80, i32 %45)
  store %struct.niu_parent* %46, %struct.niu_parent** %9, align 8
  %47 = load %struct.niu_parent*, %struct.niu_parent** %9, align 8
  %48 = icmp ne %struct.niu_parent* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  br label %154

50:                                               ; preds = %44
  %51 = load i32, i32* @niu_parent_index, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* @niu_parent_index, align 4
  %53 = sext i32 %51 to i64
  %54 = load %struct.niu_parent*, %struct.niu_parent** %9, align 8
  %55 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %54, i32 0, i32 11
  store i64 %53, i64* %55, align 8
  %56 = load %struct.niu_parent*, %struct.niu_parent** %9, align 8
  %57 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store %struct.niu_parent* %56, %struct.niu_parent** %59, align 8
  %60 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %61 = load %struct.niu_parent*, %struct.niu_parent** %9, align 8
  %62 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %61, i32 0, i32 10
  store %struct.platform_device* %60, %struct.platform_device** %62, align 8
  %63 = load %struct.niu_parent*, %struct.niu_parent** %9, align 8
  %64 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %63, i32 0, i32 9
  %65 = load %union.niu_parent_id*, %union.niu_parent_id** %6, align 8
  %66 = call i32 @memcpy(i32* %64, %union.niu_parent_id* %65, i32 4)
  %67 = load i64, i64* %7, align 8
  %68 = load %struct.niu_parent*, %struct.niu_parent** %9, align 8
  %69 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.niu_parent*, %struct.niu_parent** %9, align 8
  %71 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %70, i32 0, i32 7
  %72 = call i32 @INIT_LIST_HEAD(i32* %71)
  %73 = load %struct.niu_parent*, %struct.niu_parent** %9, align 8
  %74 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %73, i32 0, i32 8
  %75 = call i32 @atomic_set(i32* %74, i32 0)
  %76 = load %struct.niu_parent*, %struct.niu_parent** %9, align 8
  %77 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %76, i32 0, i32 7
  %78 = call i32 @list_add(i32* %77, i32* @niu_parent_list)
  %79 = load %struct.niu_parent*, %struct.niu_parent** %9, align 8
  %80 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %79, i32 0, i32 6
  %81 = call i32 @spin_lock_init(i32* %80)
  %82 = load %struct.niu_parent*, %struct.niu_parent** %9, align 8
  %83 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %82, i32 0, i32 1
  store i32 7500, i32* %83, align 8
  %84 = load i32, i32* @NIU_PCI_TCAM_ENTRIES, align 4
  %85 = load %struct.niu_parent*, %struct.niu_parent** %9, align 8
  %86 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 8
  %87 = load %struct.niu_parent*, %struct.niu_parent** %9, align 8
  %88 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @PLAT_TYPE_NIU, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %50
  %93 = load i32, i32* @NIU_NONPCI_TCAM_ENTRIES, align 4
  %94 = load %struct.niu_parent*, %struct.niu_parent** %9, align 8
  %95 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %94, i32 0, i32 5
  store i32 %93, i32* %95, align 8
  br label %96

96:                                               ; preds = %92, %50
  %97 = load i32, i32* @CLASS_CODE_USER_PROG1, align 4
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %132, %96
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* @CLASS_CODE_SCTP_IPV6, align 4
  %101 = icmp sle i32 %99, %100
  br i1 %101, label %102, label %135

102:                                              ; preds = %98
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* @CLASS_CODE_USER_PROG1, align 4
  %105 = sub nsw i32 %103, %104
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* @TCAM_KEY_TSEL, align 4
  %107 = load %struct.niu_parent*, %struct.niu_parent** %9, align 8
  %108 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %107, i32 0, i32 4
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 %106, i32* %112, align 4
  %113 = load i32, i32* @FLOW_KEY_IPSA, align 4
  %114 = load i32, i32* @FLOW_KEY_IPDA, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @FLOW_KEY_PROTO, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @FLOW_KEY_L4_BYTE12, align 4
  %119 = load i32, i32* @FLOW_KEY_L4_0_SHIFT, align 4
  %120 = shl i32 %118, %119
  %121 = or i32 %117, %120
  %122 = load i32, i32* @FLOW_KEY_L4_BYTE12, align 4
  %123 = load i32, i32* @FLOW_KEY_L4_1_SHIFT, align 4
  %124 = shl i32 %122, %123
  %125 = or i32 %121, %124
  %126 = load %struct.niu_parent*, %struct.niu_parent** %9, align 8
  %127 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32 %125, i32* %131, align 4
  br label %132

132:                                              ; preds = %102
  %133 = load i32, i32* %10, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %10, align 4
  br label %98

135:                                              ; preds = %98
  store i32 0, i32* %10, align 4
  br label %136

136:                                              ; preds = %149, %135
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* @LDN_MAX, align 4
  %139 = add nsw i32 %138, 1
  %140 = icmp slt i32 %137, %139
  br i1 %140, label %141, label %152

141:                                              ; preds = %136
  %142 = load i32, i32* @LDG_INVALID, align 4
  %143 = load %struct.niu_parent*, %struct.niu_parent** %9, align 8
  %144 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %143, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  store i32 %142, i32* %148, align 4
  br label %149

149:                                              ; preds = %141
  %150 = load i32, i32* %10, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %10, align 4
  br label %136

152:                                              ; preds = %136
  %153 = load %struct.niu_parent*, %struct.niu_parent** %9, align 8
  store %struct.niu_parent* %153, %struct.niu_parent** %4, align 8
  br label %157

154:                                              ; preds = %49, %39
  %155 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %156 = call i32 @platform_device_unregister(%struct.platform_device* %155)
  store %struct.niu_parent* null, %struct.niu_parent** %4, align 8
  br label %157

157:                                              ; preds = %154, %152, %18
  %158 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  ret %struct.niu_parent* %158
}

declare dso_local %struct.platform_device* @platform_device_register_simple(i8*, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.platform_device*) #1

declare dso_local i32 @device_create_file(%struct.TYPE_7__*, %struct.TYPE_6__*) #1

declare dso_local %struct.niu_parent* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, %union.niu_parent_id*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @platform_device_unregister(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
