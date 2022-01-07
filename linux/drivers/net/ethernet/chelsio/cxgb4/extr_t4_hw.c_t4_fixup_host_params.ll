; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_fixup_host_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_fixup_host_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@SGE_HOST_PAGE_SIZE_A = common dso_local global i32 0, align 4
@SGE_CONTROL_A = common dso_local global i32 0, align 4
@INGPADBOUNDARY_M = common dso_local global i32 0, align 4
@EGRSTATUSPAGESIZE_F = common dso_local global i32 0, align 4
@INGPADBOUNDARY_SHIFT_X = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_PAYLOAD = common dso_local global i32 0, align 4
@INGPACKBOUNDARY_16B_X = common dso_local global i32 0, align 4
@INGPACKBOUNDARY_64B_X = common dso_local global i32 0, align 4
@INGPACKBOUNDARY_SHIFT_X = common dso_local global i32 0, align 4
@INGPADBOUNDARY_32B_X = common dso_local global i32 0, align 4
@T6_INGPADBOUNDARY_8B_X = common dso_local global i32 0, align 4
@SGE_CONTROL2_A = common dso_local global i32 0, align 4
@INGPACKBOUNDARY_M = common dso_local global i32 0, align 4
@SGE_FL_BUFFER_SIZE0_A = common dso_local global i32 0, align 4
@SGE_FL_BUFFER_SIZE2_A = common dso_local global i32 0, align 4
@SGE_FL_BUFFER_SIZE3_A = common dso_local global i32 0, align 4
@ULP_RX_TDDP_PSZ_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_fixup_host_params(%struct.adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @fls(i32 %19)
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = sub i32 %22, 10
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ugt i32 %24, 64
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 128, i32 64
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ult i32 %28, 32
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %33

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  br label %33

33:                                               ; preds = %31, %30
  %34 = phi i32 [ 32, %30 ], [ %32, %31 ]
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @fls(i32 %35)
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %11, align 4
  %38 = load %struct.adapter*, %struct.adapter** %4, align 8
  %39 = load i32, i32* @SGE_HOST_PAGE_SIZE_A, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @HOSTPAGESIZEPF0_V(i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @HOSTPAGESIZEPF1_V(i32 %42)
  %44 = or i32 %41, %43
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @HOSTPAGESIZEPF2_V(i32 %45)
  %47 = or i32 %44, %46
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @HOSTPAGESIZEPF3_V(i32 %48)
  %50 = or i32 %47, %49
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @HOSTPAGESIZEPF4_V(i32 %51)
  %53 = or i32 %50, %52
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @HOSTPAGESIZEPF5_V(i32 %54)
  %56 = or i32 %53, %55
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @HOSTPAGESIZEPF6_V(i32 %57)
  %59 = or i32 %56, %58
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @HOSTPAGESIZEPF7_V(i32 %60)
  %62 = or i32 %59, %61
  %63 = call i32 @t4_write_reg(%struct.adapter* %38, i32 %39, i32 %62)
  %64 = load %struct.adapter*, %struct.adapter** %4, align 8
  %65 = getelementptr inbounds %struct.adapter, %struct.adapter* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @is_t4(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %33
  %71 = load %struct.adapter*, %struct.adapter** %4, align 8
  %72 = load i32, i32* @SGE_CONTROL_A, align 4
  %73 = load i32, i32* @INGPADBOUNDARY_M, align 4
  %74 = call i32 @INGPADBOUNDARY_V(i32 %73)
  %75 = load i32, i32* @EGRSTATUSPAGESIZE_F, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @INGPADBOUNDARY_SHIFT_X, align 4
  %79 = sub i32 %77, %78
  %80 = call i32 @INGPADBOUNDARY_V(i32 %79)
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 64
  %83 = zext i1 %82 to i32
  %84 = call i32 @EGRSTATUSPAGESIZE_V(i32 %83)
  %85 = or i32 %80, %84
  %86 = call i32 @t4_set_reg_field(%struct.adapter* %71, i32 %72, i32 %76, i32 %85)
  br label %165

87:                                               ; preds = %33
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %12, align 4
  %89 = load %struct.adapter*, %struct.adapter** %4, align 8
  %90 = getelementptr inbounds %struct.adapter, %struct.adapter* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @pci_is_pcie(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %113

94:                                               ; preds = %87
  %95 = load %struct.adapter*, %struct.adapter** %4, align 8
  %96 = getelementptr inbounds %struct.adapter, %struct.adapter* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @PCI_EXP_DEVCTL, align 4
  %99 = call i32 @pcie_capability_read_word(i32 %97, i32 %98, i32* %17)
  %100 = load i32, i32* %17, align 4
  %101 = load i32, i32* @PCI_EXP_DEVCTL_PAYLOAD, align 4
  %102 = and i32 %100, %101
  %103 = ashr i32 %102, 5
  %104 = add nsw i32 %103, 7
  store i32 %104, i32* %16, align 4
  %105 = load i32, i32* %16, align 4
  %106 = shl i32 1, %105
  store i32 %106, i32* %15, align 4
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp ugt i32 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %94
  %111 = load i32, i32* %15, align 4
  store i32 %111, i32* %12, align 4
  br label %112

112:                                              ; preds = %110, %94
  br label %113

113:                                              ; preds = %112, %87
  %114 = load i32, i32* %12, align 4
  %115 = icmp ule i32 %114, 16
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load i32, i32* @INGPACKBOUNDARY_16B_X, align 4
  store i32 %117, i32* %14, align 4
  store i32 16, i32* %10, align 4
  br label %132

118:                                              ; preds = %113
  %119 = load i32, i32* %12, align 4
  %120 = icmp eq i32 %119, 32
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = load i32, i32* @INGPACKBOUNDARY_64B_X, align 4
  store i32 %122, i32* %14, align 4
  store i32 64, i32* %10, align 4
  br label %131

123:                                              ; preds = %118
  %124 = load i32, i32* %12, align 4
  %125 = call i32 @fls(i32 %124)
  %126 = sub nsw i32 %125, 1
  store i32 %126, i32* %18, align 4
  %127 = load i32, i32* %18, align 4
  %128 = load i32, i32* @INGPACKBOUNDARY_SHIFT_X, align 4
  %129 = sub i32 %127, %128
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %12, align 4
  store i32 %130, i32* %10, align 4
  br label %131

131:                                              ; preds = %123, %121
  br label %132

132:                                              ; preds = %131, %116
  %133 = load %struct.adapter*, %struct.adapter** %4, align 8
  %134 = getelementptr inbounds %struct.adapter, %struct.adapter* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i64 @is_t5(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %132
  %140 = load i32, i32* @INGPADBOUNDARY_32B_X, align 4
  store i32 %140, i32* %13, align 4
  br label %143

141:                                              ; preds = %132
  %142 = load i32, i32* @T6_INGPADBOUNDARY_8B_X, align 4
  store i32 %142, i32* %13, align 4
  br label %143

143:                                              ; preds = %141, %139
  %144 = load %struct.adapter*, %struct.adapter** %4, align 8
  %145 = load i32, i32* @SGE_CONTROL_A, align 4
  %146 = load i32, i32* @INGPADBOUNDARY_M, align 4
  %147 = call i32 @INGPADBOUNDARY_V(i32 %146)
  %148 = load i32, i32* @EGRSTATUSPAGESIZE_F, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* %13, align 4
  %151 = call i32 @INGPADBOUNDARY_V(i32 %150)
  %152 = load i32, i32* %9, align 4
  %153 = icmp ne i32 %152, 64
  %154 = zext i1 %153 to i32
  %155 = call i32 @EGRSTATUSPAGESIZE_V(i32 %154)
  %156 = or i32 %151, %155
  %157 = call i32 @t4_set_reg_field(%struct.adapter* %144, i32 %145, i32 %149, i32 %156)
  %158 = load %struct.adapter*, %struct.adapter** %4, align 8
  %159 = load i32, i32* @SGE_CONTROL2_A, align 4
  %160 = load i32, i32* @INGPACKBOUNDARY_M, align 4
  %161 = call i32 @INGPACKBOUNDARY_V(i32 %160)
  %162 = load i32, i32* %14, align 4
  %163 = call i32 @INGPACKBOUNDARY_V(i32 %162)
  %164 = call i32 @t4_set_reg_field(%struct.adapter* %158, i32 %159, i32 %161, i32 %163)
  br label %165

165:                                              ; preds = %143, %70
  %166 = load %struct.adapter*, %struct.adapter** %4, align 8
  %167 = load i32, i32* @SGE_FL_BUFFER_SIZE0_A, align 4
  %168 = load i32, i32* %5, align 4
  %169 = call i32 @t4_write_reg(%struct.adapter* %166, i32 %167, i32 %168)
  %170 = load %struct.adapter*, %struct.adapter** %4, align 8
  %171 = load i32, i32* @SGE_FL_BUFFER_SIZE2_A, align 4
  %172 = load %struct.adapter*, %struct.adapter** %4, align 8
  %173 = load i32, i32* @SGE_FL_BUFFER_SIZE2_A, align 4
  %174 = call i32 @t4_read_reg(%struct.adapter* %172, i32 %173)
  %175 = load i32, i32* %10, align 4
  %176 = add i32 %174, %175
  %177 = sub i32 %176, 1
  %178 = load i32, i32* %10, align 4
  %179 = sub i32 %178, 1
  %180 = xor i32 %179, -1
  %181 = and i32 %177, %180
  %182 = call i32 @t4_write_reg(%struct.adapter* %170, i32 %171, i32 %181)
  %183 = load %struct.adapter*, %struct.adapter** %4, align 8
  %184 = load i32, i32* @SGE_FL_BUFFER_SIZE3_A, align 4
  %185 = load %struct.adapter*, %struct.adapter** %4, align 8
  %186 = load i32, i32* @SGE_FL_BUFFER_SIZE3_A, align 4
  %187 = call i32 @t4_read_reg(%struct.adapter* %185, i32 %186)
  %188 = load i32, i32* %10, align 4
  %189 = add i32 %187, %188
  %190 = sub i32 %189, 1
  %191 = load i32, i32* %10, align 4
  %192 = sub i32 %191, 1
  %193 = xor i32 %192, -1
  %194 = and i32 %190, %193
  %195 = call i32 @t4_write_reg(%struct.adapter* %183, i32 %184, i32 %194)
  %196 = load %struct.adapter*, %struct.adapter** %4, align 8
  %197 = load i32, i32* @ULP_RX_TDDP_PSZ_A, align 4
  %198 = load i32, i32* %7, align 4
  %199 = sub i32 %198, 12
  %200 = call i32 @HPZ0_V(i32 %199)
  %201 = call i32 @t4_write_reg(%struct.adapter* %196, i32 %197, i32 %200)
  ret i32 0
}

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @HOSTPAGESIZEPF0_V(i32) #1

declare dso_local i32 @HOSTPAGESIZEPF1_V(i32) #1

declare dso_local i32 @HOSTPAGESIZEPF2_V(i32) #1

declare dso_local i32 @HOSTPAGESIZEPF3_V(i32) #1

declare dso_local i32 @HOSTPAGESIZEPF4_V(i32) #1

declare dso_local i32 @HOSTPAGESIZEPF5_V(i32) #1

declare dso_local i32 @HOSTPAGESIZEPF6_V(i32) #1

declare dso_local i32 @HOSTPAGESIZEPF7_V(i32) #1

declare dso_local i64 @is_t4(i32) #1

declare dso_local i32 @t4_set_reg_field(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @INGPADBOUNDARY_V(i32) #1

declare dso_local i32 @EGRSTATUSPAGESIZE_V(i32) #1

declare dso_local i64 @pci_is_pcie(i32) #1

declare dso_local i32 @pcie_capability_read_word(i32, i32, i32*) #1

declare dso_local i64 @is_t5(i32) #1

declare dso_local i32 @INGPACKBOUNDARY_V(i32) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @HPZ0_V(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
