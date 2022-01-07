; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_free_vfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_free_vfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_9__*, i32*, %struct.i40e_hw }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32 }
%struct.i40e_hw = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@__I40E_VF_DISABLE = common dso_local global i32 0, align 4
@I40E_VF_STATE_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"VFs are assigned - not disabling SR-IOV\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_free_vfs(%struct.i40e_pf* %0) #0 {
  %2 = alloca %struct.i40e_pf*, align 8
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %2, align 8
  %9 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %10 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %9, i32 0, i32 5
  store %struct.i40e_hw* %10, %struct.i40e_hw** %3, align 8
  %11 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %12 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %11, i32 0, i32 3
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = icmp ne %struct.TYPE_9__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %207

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %24, %16
  %18 = load i32, i32* @__I40E_VF_DISABLE, align 4
  %19 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %20 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @test_and_set_bit(i32 %18, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %17

26:                                               ; preds = %17
  %27 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %28 = call i32 @i40e_notify_client_of_vf_enable(%struct.i40e_pf* %27, i32 0)
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %62, %26
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %32 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %65

35:                                               ; preds = %29
  %36 = load i32, i32* @I40E_VF_STATE_INIT, align 4
  %37 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %38 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %37, i32 0, i32 3
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = call i64 @test_bit(i32 %36, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %62

47:                                               ; preds = %35
  %48 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %49 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %52 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %51, i32 0, i32 3
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i32, i32* %50, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @i40e_vsi_stop_rings_no_wait(i32 %60)
  br label %62

62:                                               ; preds = %47, %46
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %29

65:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %99, %65
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %69 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %102

72:                                               ; preds = %66
  %73 = load i32, i32* @I40E_VF_STATE_INIT, align 4
  %74 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %75 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %74, i32 0, i32 3
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = call i64 @test_bit(i32 %73, i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %72
  br label %99

84:                                               ; preds = %72
  %85 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %86 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %85, i32 0, i32 4
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %89 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %88, i32 0, i32 3
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i32, i32* %87, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @i40e_vsi_wait_queues_disabled(i32 %97)
  br label %99

99:                                               ; preds = %84, %83
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %6, align 4
  br label %66

102:                                              ; preds = %66
  %103 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %104 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %103, i32 0, i32 2
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = call i32 @pci_vfs_assigned(%struct.TYPE_8__* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %102
  %109 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %110 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %109, i32 0, i32 2
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = call i32 @pci_disable_sriov(%struct.TYPE_8__* %111)
  br label %119

113:                                              ; preds = %102
  %114 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %115 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %114, i32 0, i32 2
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = call i32 @dev_warn(i32* %117, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %119

119:                                              ; preds = %113, %108
  %120 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %121 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  store i32 %122, i32* %7, align 4
  %123 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %124 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %123, i32 0, i32 0
  store i32 0, i32* %124, align 8
  store i32 0, i32* %6, align 4
  br label %125

125:                                              ; preds = %156, %119
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %159

129:                                              ; preds = %125
  %130 = load i32, i32* @I40E_VF_STATE_INIT, align 4
  %131 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %132 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %131, i32 0, i32 3
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %132, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 1
  %138 = call i64 @test_bit(i32 %130, i32* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %129
  %141 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %142 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %141, i32 0, i32 3
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %142, align 8
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i64 %145
  %147 = call i32 @i40e_free_vf_res(%struct.TYPE_9__* %146)
  br label %148

148:                                              ; preds = %140, %129
  %149 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %150 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %149, i32 0, i32 3
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %150, align 8
  %152 = load i32, i32* %6, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i64 %153
  %155 = call i32 @i40e_disable_vf_mappings(%struct.TYPE_9__* %154)
  br label %156

156:                                              ; preds = %148
  %157 = load i32, i32* %6, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %6, align 4
  br label %125

159:                                              ; preds = %125
  %160 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %161 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %160, i32 0, i32 3
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %161, align 8
  %163 = call i32 @kfree(%struct.TYPE_9__* %162)
  %164 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %165 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %164, i32 0, i32 3
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %165, align 8
  %166 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %167 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %166, i32 0, i32 2
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %167, align 8
  %169 = call i32 @pci_vfs_assigned(%struct.TYPE_8__* %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %201, label %171

171:                                              ; preds = %159
  store i32 0, i32* %8, align 4
  br label %172

172:                                              ; preds = %197, %171
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* %7, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %200

176:                                              ; preds = %172
  %177 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %178 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %8, align 4
  %182 = add nsw i32 %180, %181
  %183 = sdiv i32 %182, 32
  store i32 %183, i32* %4, align 4
  %184 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %185 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %8, align 4
  %189 = add nsw i32 %187, %188
  %190 = srem i32 %189, 32
  store i32 %190, i32* %5, align 4
  %191 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %192 = load i32, i32* %4, align 4
  %193 = call i32 @I40E_GLGEN_VFLRSTAT(i32 %192)
  %194 = load i32, i32* %5, align 4
  %195 = call i32 @BIT(i32 %194)
  %196 = call i32 @wr32(%struct.i40e_hw* %191, i32 %193, i32 %195)
  br label %197

197:                                              ; preds = %176
  %198 = load i32, i32* %8, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %8, align 4
  br label %172

200:                                              ; preds = %172
  br label %201

201:                                              ; preds = %200, %159
  %202 = load i32, i32* @__I40E_VF_DISABLE, align 4
  %203 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %204 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @clear_bit(i32 %202, i32 %205)
  br label %207

207:                                              ; preds = %201, %15
  ret void
}

declare dso_local i64 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @i40e_notify_client_of_vf_enable(%struct.i40e_pf*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @i40e_vsi_stop_rings_no_wait(i32) #1

declare dso_local i32 @i40e_vsi_wait_queues_disabled(i32) #1

declare dso_local i32 @pci_vfs_assigned(%struct.TYPE_8__*) #1

declare dso_local i32 @pci_disable_sriov(%struct.TYPE_8__*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @i40e_free_vf_res(%struct.TYPE_9__*) #1

declare dso_local i32 @i40e_disable_vf_mappings(%struct.TYPE_9__*) #1

declare dso_local i32 @kfree(%struct.TYPE_9__*) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @I40E_GLGEN_VFLRSTAT(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
